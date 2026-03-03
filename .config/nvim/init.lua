vim.cmd.colorscheme("habamax")
vim.g.mapleader = " "
vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.guicursor = ""
vim.opt.ignorecase = true
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.title = true
vim.opt.whichwrap:append("<,>,h,l")
vim.opt.wrap = false
-------------------------------------------------------------------------------
vim.cmd([[
call plug#begin(stdpath('data').'/plugged')

Plug 'Konfekt/filepicker.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'mason-org/mason.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-surround'

call plug#end()
]])

vim.cmd.packadd("nohlsearch")
-------------------------------------------------------------------------------
--neovide

if vim.g.neovide then
	-- vim.g.neovide_cursor_animation_length = 0.150
	vim.g.neovide_padding_bottom = 3
	vim.g.neovide_padding_left = 3
	vim.g.neovide_padding_right = 3
	vim.g.neovide_padding_top = 3
	-- vim.g.neovide_text_contrast = 0.1 --alacritty
	-- vim.g.neovide_text_gamma = 0.8
	vim.o.linespace = 0
end
------------------------------------------------------------------------------
--keymaps

vim.keymap.set('n', '<Esc><Esc>', vim.cmd.nohlsearch)

vim.keymap.set('n', '<leader>w', vim.cmd.update)
vim.keymap.set('n', '<leader>bs', '<Cmd>ls<CR>:b<Space>')
vim.keymap.set('n', '<leader>bd', vim.cmd.bdelete)
vim.keymap.set('n', '<leader>te', ':tabe<Space>')

vim.keymap.set('n', '<leader>y', '<Cmd>%y+<CR>')
vim.keymap.set('x', '<leader>y', '"+y')

vim.keymap.set('t', '>', '')
vim.keymap.set('t', '<c-w>', '')

--ZED
local tognum = function()
	if vim.o.number then
		vim.o.number = false
		vim.o.relativenumber = false
	else
		vim.o.number = true
		vim.o.relativenumber = true
	end
end

vim.keymap.set('n', '<c-;>', tognum)     -- <c-w> neovide only
vim.keymap.set('n', '<leader>;', tognum) -- <c-w> neovide only

-------------------------------------------------------------------------------
--plug spec
vim.gno_filepicker_maps = 1 -- unmap the default
vim.keymap.set('n', '<leader>e', '<Plug>(FilePicker)')

require("cman.lsp")
require("mason").setup()
require("nvim-treesitter").setup({
	ensure_installed = { "cpp", "rust" },
	highlight = { enable = true },
	indent = { enable = true },
})
