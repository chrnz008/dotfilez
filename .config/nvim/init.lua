-- Author: charan
-- Gmail:  charancuz008@gmail.com
-- vim.keymap.set('ia','ch','charan')
-- General
-------------------------------------------------------------
vim.o.history = 500
vim.g.mapleader = " "
vim.o.autoread=true

-- Vim plug on top
vim.cmd([[
call plug#begin('~/Appdata/Local/nvim-data/plugged')

Plug 'Konfekt/filepicker.vim' "use yazi as filemanager 

Plug 'jiangmiao/auto-pairs'
"Plug 'preservim/nerdtree'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "//cont:no need when fzf is in system
"Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator' "somehow making ctrl-w easy maps (nvim)
"Plug 'tpope/vim-commentary' "commentary is builtin to nvim
Plug 'tpope/vim-surround'

"for flutter
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'

call plug#end()
]])


-- VIM UI
-------------------------------------------------------------
vim.o.guicursor=""
vim.o.so = 7
vim.o.shortmess = vim.o.shortmess .. "I"
vim.o.wildmenu=true
vim.o.ruler=true
vim.o.number = true
vim.o.relativenumber = true
vim.o.foldcolumn = "1"
vim.o.signcolumn = "no"
vim.o.laststatus = 3 --set a global statusline

vim.o.winborder="rounded" --make the popup rounded
vim.o.winblend = 0--make the window opaque 



-- VIM UX
-------------------------------------------------------------
vim.opt.path:append("**")
vim.o.hid=true
vim.o.backspace = "eol,start,indent"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.lazyredraw = true
vim.o.magic = true
vim.o.showmatch = false
vim.o.timeoutlen = 500
vim.o.smoothscroll=true

-- Syntax and colors
vim.o.regexpengine = 0
vim.o.tgc=true
vim.o.background="dark"
vim.cmd([[colorscheme retrobox]])
-- vim.cmd([[colorscheme vim]])

-- colorscheme deps
vim.api.nvim_set_hl( 0, "NormalFloat", {})  -- remove that weird abstraction due to winblend
-- vim.api.nvim_set_hl( 0, "Statusline", {})  -- remove that weird abstraction due to winblend

-- Files
-------------------------------------------------------------
vim.o.ffs=dos,unix
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- Tabs & Indentation
-------------------------------------------------------------
vim.o.expandtab = false
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.linebreak = true
vim.o.textwidth = 500
vim.o.smartindent = true
vim.o.wrap = false

-- misc
-------------------------------------------------------------
vim.o.joinspaces = false
vim.o.concealcursor= "nc" 
vim.cmd([[autocmd FileType c,cpp setlocal cindent]])

-- Keymaps
-------------------------------------------------------------

local map = vim.keymap.set

-- Normal mode: Double <Esc> to clear search highlight
map("n", "<Esc><Esc>", ":noh<CR><Esc>", { silent = true })


map({"n"},"<leader>w","<Cmd>update<CR>")
--
map({"n"},"<leader>bd",":bd<CR>")
map({"n"},"<leader>bs",":ls<CR>:b ")


-- clipboard yanking

map({'x'},"<leader>y",'"+y')
map({'n'},"<leader>y",':%y+<CR>')

-- Terminal mode: Map <Esc> to exit terminal mode
map("t", "<Esc>", [[<C-\><C-n>]], { silent = true })

--plugi-spec
-------------------------------------------------------------
-- FZF: <leader>ff to open Files
-- map("n", "<leader>ff", ":Files<CR>", { silent = true })
-- vim.g.fzf_comm0and_prefix = 'Fzf'

vim.g.no_filepicker_maps = 1
map("n","<leader>e","<Plug>(FilePicker)",{silent=true})

-- Insert mode: Tab completion like nvim-cmp / coc
map("i", "<Tab>", 'pumvisible() ? coc#_select_confirm() : "\\<Tab>"', {
  expr = true,
  silent = true,
  noremap = true
})

-- require("chrn.plugins")

vim.opt.shell="nu"


-- LSP
-------------------------------------------------------------
--[[
--enable-lsp-server
vim.lsp.enable({'clangd'})

--autocompletion
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

vim.cmd("se completeopt+=noselect")
]]--
