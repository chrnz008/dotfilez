iab ch charan
iab mal charancuz008gmail.com

"-------------------------------------------------------------

filetype plugin indent on " Enable filetype plugins
syntax on" Enable syntax highlighting

let mapleader=' '

"vim plug --ontop
call plug#begin(stdpath('data').'/plugged')

Plug 'Konfekt/filepicker.vim' "use yazi as filemanager 

Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator' "somehow making ctrl-w to easy maps
Plug 'tpope/vim-surround'

Plug 'saghen/blink.cmp', { 'tag': 'v1.*' }

call plug#end()

packadd nohlsearch "performs noh aut

"-------------------------------------------------------------

colo retrobox
set cmdheight=1 " Height of the command bar (default)
set colorcolumn=80 "Will make screen redrawing slower
set concealcursor=nc "conceals cursor 
set cursorline
set cursorlineopt=number "just hi the number
set ffs=unix,dos,mac " Use Unix as the standard file type
set foldcolumn=1 
set gcr=a:block "fat cursor --vim.o.guicursor=""
set ignorecase " Ignore case when searching
set laststatus=3 " always show statusline 
set noexpandtab
set noshowmatch " matching bracks
set noswapfile "no swaps
set nowrap "noWrap lines
set nowritebackup
set number " show line numbers
set path+=** "make the find to search through dirs and subdirs
set regexpengine=0 "performance on windows"
set relativenumber " show relativeline numbers
set scrolloff=7
set shiftwidth=4
set shortmess+=I  "disables the start page
set smartcase " When searching try to be smart about cases
set smartindent 
set softtabstop-=1 "inherit from shiftwidth
set tabstop=4
set timeoutlen=500
set title
set whichwrap+=<,>,h,l "makes cursor move from one to another at ends
set wildmenu " Turn on the Wild menu
set winborder=rounded

"-- plgn-spe-conf
"-------------------------------------------------------------- 

let g:no_filepicker_maps = 1 "unmap the default
nnoremap <silent> <leader>e <Plug>(FilePicker)

" ->KEYMAPS
"-------------------------------------------------------------- 

" different keymaps for easy peasy coding

nnoremap <Esc><Esc> <Cmd>nohlsearch<CR>| " hlsearch creates an annoyance so instead of noh press ese esc
"above one has a default plugin

nnoremap <leader>w <Cmd>update<CR>
nnoremap <leader>bs <Cmd>ls<CR>:b<Space>
" nnoremap <leader>bd :bd<Return><Esc>  | " much easier
nnoremap <leader>bd <Cmd>bd<CR>

nnoremap <leader>te :tabe<Space>

nnoremap <leader>y :%y+<CR> | "system clipboard
xnoremap <leader>y "+y | "system clipboard for all visual modes

nnoremap <leader>f :fin | "easy find
tnoremap t   | "terminal mode

"LUABLOCK
"-------------------------------------------------------------- 
lua << EOF
require("cman.lsp")
require("cman.plugins")
EOF
