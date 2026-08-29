vim.g.mapleader = " "
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.guicursor = "r-cr:hor20"
vim.opt.ignorecase = true
vim.opt.laststatus = 0
vim.opt.listchars:append("tab:› ")
vim.opt.shiftwidth = 4
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.title = true
vim.opt.wrap = false

--key-mapping
-- vim.keymap.set('n', '<Esc><Esc>', vim.cmd.nohlsearch) --use CTRL-L instead
vim.keymap.set('n', '<leader>w', vim.cmd.update)
vim.keymap.set('n', '<leader>bs', '<Cmd>ls<CR>:b<Space>')
vim.keymap.set('n', '<leader>bd', vim.cmd.bdelete)
vim.keymap.set('n', '<leader>te', ':tabe<Space>')
vim.keymap.set('n', '<leader>y', '<Cmd>%y+<CR>')
vim.keymap.set('x', '<leader>y', '"+y')

--cmdline
vim.cmd([[
	cnoremap <expr> <C-P> wildmenumode() ? '<C-P>' : '<Up>'
	cnoremap <expr> <C-N> wildmenumode() ? '<C-N>' : '<Down>'
]])
vim.keymap.set('c', '<C-A>', '<Home>')
vim.keymap.set('c', '<C-X><C-A>', '<C-A>')
vim.keymap.set('c', '<C-B>', '<Left>')
vim.keymap.set('c', '<C-D>', '<Del>')
vim.keymap.set('c', '<C-X><C-D>', '<C-D>')
vim.keymap.set('c', '<C-F>', '<Right>')
vim.keymap.set('c', '<C-X><C-F>', '<C-F>')
-- vim.keymap.set('c', '<C-K>', '<C-E><C-U>') --try <C-E><C-U>ing
vim.keymap.set('c', '<A-b>', '<C-Left>')
vim.keymap.set('c', '<A-f>', '<C-Right>')

vim.keymap.set('t', '>', '')
vim.keymap.set('t', '<c-w>', '')


--zed
local tognum = function()
	vim.o.number = not vim.o.number
	vim.o.relativenumber = not vim.o.relativenumber
end

vim.keymap.set('n', '<c-;>', tognum)     -- <c-w> neovide only
vim.keymap.set('n', '<leader>;', tognum) -- <c-w> neovide only

require('vim._core.ui2').enable()

--halfbaked
local function apply_highlights()
	local coloname = vim.g.colors_name
	local hi = vim.api.nvim_set_hl
	if coloname == "quiet" or coloname == "wildcharm" or coloname == "slate" or coloname == "habamax" then
		hi(0, "VertSplit", { bg = "NONE" })
	end
	if coloname == 'quiet' then
		--this are stripped see https://github.com/neutaaaaan/monosvkem
		--opend a issue for cursors
		--monosvkem
		local normal = { bg = "#181818", fg = "#dadada" }
		if vim.o.background == "dark" then
			hi(0, "Cursor", { fg = normal.fg, bg = normal.bg })
			hi(0, "CursorLineNr", { fg = "#20bbfc", bg = normal.bg, cterm = {} })
			hi(0, "Normal", { bg = normal.bg, cterm = {} })
			hi(0, "StatusLine", { fg = "#a8a8a8", bg = "#2c2c2c", bold = true })
			hi(0, "StatusLineNC", { fg = "#636363", bg = "#222222" })
			hi(0, "WildMenu", { fg = "#00afff", bg = normal.bg })
			hi(0, "String", { fg = "#5688af", bg = normal.bg, cterm = {} })
			hi(0, "Type", { fg = "#8b7355" })
			hi(0, "Special", { fg = "#d02b61", bg = "NONE", cterm = {} })
			hi(0, "TitleBar", { bg = "#303030" }) --neovide?? TODO
		else
			-- TODO
			hi(0, "Cursor", { fg = normal.bg, bg = "#d7d7d7" })
			hi(0, "CursorLineNr", { fg = "#080808", bg = "#d7d7d7", cterm = {} })
			hi(0, "Special", { fg = "#aa053b", bg = "NONE", cterm = {} })
			hi(0, "String", { fg = "#0056b7", bg = "#d7d7d7", cterm = {} })
			hi(0, "StatusLine", { bold = true, fg = "#eeeeee", bg = "#626262", cterm = {} })
		end
	elseif coloname == 'default' then
		hi(0, "Normal", { bg = "#181818" })
	end
end
--apply whenever theme changed
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = apply_highlights
})
vim.cmd.colorscheme("default")

--cavemens
--autopairs
-- vim.keymap.set(0, 'i','(<CR>', '(<CR>)<Esc>O')
-- vim.keymap.set(0, 'i','[<CR>', '[<CR>]<Esc>O')
-- vim.keymap.set(0, 'i','{<CR>', '{<CR>}<Esc>O')

if vim.fn.executable("yazi") then
	vim.g.loaded_netrw = 0
	vim.g.loaded_netrwPlugin = 0
end

vim.api.nvim_create_user_command("PackClean", function()
	vim.pack.del(vim.iter(vim.pack.get())
		:filter(function(x) return not x.active end)
		:map(function(x) return x.spec.name end)
		:totable())
end, {})
vim.pack.add({

	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/Konfekt/filepicker.vim',
	'https://github.com/chrnz008/gruber.vim',
	'https://github.com/jiangmiao/auto-pairs', --test
	'https://github.com/mason-org/mason.nvim',
	'https://github.com/mason-org/mason-lspconfig.nvim',
	'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/tpope/vim-surround',
	'https://github.com/lewis6991/gitsigns.nvim',

})

vim.cmd.packadd("nohlsearch")

if vim.fn.has("win32") == 1 then
	vim.opt.guifont = "consolas:h12"
end

--neovide
if vim.g.neovide then
	-- vim.g.neovide_cursor_animation_length = 0.150
	-- vim.g.neovide_padding_bottom = 3
	vim.g.neovide_padding_left = 3
	vim.g.neovide_padding_right = 3
	vim.g.neovide_padding_top = 3
	-- vim.g.neovide_text_contrast = 0.1 --alacritty
	-- vim.g.neovide_text_gamma = 0.8
	vim.o.linespace = 0
end

--plug spec

require("nvim-treesitter").setup({
	ensure_installed = { "cpp", "rust" },
	highlight = { enable = true },
	indent = { enable = true },
})

-- LSP
--enable-lsp-server
vim.lsp.enable({ 'clangd', 'lua_ls', 'rust_analyzer' }) --mason-lspconfig

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)   --or use gq
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
		}
	},
})

-- autocompletion
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})

vim.lsp.document_color.enable(true, nil, { style = '●' })
-- vim.lsp.inlay_hint.enable(true)

-- vim.diagnostic.config({
	-- virtual_lines = true
	-- virtual_lines = {
	-- Only show virtual line diagnostics for the current cursor line
	-- current_line = true
	-- }
-- })

vim.opt.completeopt:append("noinsert")

vim.gno_filepicker_maps = 1 -- unmap the default
vim.keymap.set('n', '<leader>e', '<Plug>(FilePicker)')

require("mason").setup()
require("mason-lspconfig").setup()
