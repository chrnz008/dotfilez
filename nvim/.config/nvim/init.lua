-- Author: charan
-- Gmail:  charancuz008@gmail.com

-- General
-------------------------------------------------------------
vim.o.history = 500
vim.g.mapleader = " "
vim.o.autoread=true

-- Vim plug on top
vim.cmd([[
call plug#begin('~/Appdata/Local/nvim-data/plugged')

"Plug 'lifepillar/vim-solarized8'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'jiangmiao/auto-pairs'
"Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "//cont:no need when fzf is in system
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator' "somehow making ctrl-w easy maps (nvim)
Plug 'tpope/vim-commentary'
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

vim.o.winborder="rounded" --make the popup rounded
vim.o.winblend = 0--make the window opaque 



-- VIM UX
-------------------------------------------------------------
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
-- vim.api.nvim_set_hl( "NormalFloat", { bg =" " })  -- lmao there is no none in nvim
vim.cmd([[hi NormalFloat guibg=NONE]])

-- Files
-------------------------------------------------------------
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
-- Terminal mode: Map <Esc> to exit terminal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { silent = true })

-- Normal mode: Double <Esc> to clear search highlight
vim.keymap.set("n", "<Esc><Esc>", ":noh<CR><Esc>", { silent = true })

-- FZF: <leader>ff to open Files
vim.keymap.set("n", "<leader>ff", ":Files<CR>", { silent = true })
-- vim.g.fzf_comm0and_prefix = 'Fzf'

--NerdTreeToggle
-- vim.keymap.set("n", "<leader>e", ":NERDTreeToggle<CR>", { silent = true })
-- vim.keymap.set("n", "<Leader>e", "<Cmd>NERDTreeClose<Bar>silent! NERDTreeFind<Bar>NERDTreeFocus<CR>", { silent = true }) //for autobuffing


-- Insert mode: Tab completion like nvim-cmp / coc
vim.keymap.set("i", "<Tab>", 'pumvisible() ? coc#_select_confirm() : "\\<Tab>"', {
  expr = true,
  silent = true,
  noremap = true
})
-- require("chrn.plugins")

