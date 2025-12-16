iab mee charan
iab mal charancuz008gmail.com

"-------------------------------------------------------------

let mapleader=' '

"vim plug --ontop
call plug#begin(stdpath('data').'/plugged')

Plug 'sainnhe/everforest'
Plug 'Konfekt/filepicker.vim' "use yazi as filemanager
Plug 'christoomey/vim-tmux-navigator' "somehow making ctrl-w to easy maps
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'NTBBloodbath/doom-one.nvim'
Plug 'saghen/blink.cmp', { 'tag': 'v1.*' }

call plug#end()

packadd nohlsearch "performs noh aut

"-------------------------------------------------------------

colo everforest
set colorcolumn=80 "Will make screen redrawing slower
set concealcursor=nc "conceals cursor
set cursorline
set cursorlineopt=number "just hi the number
set gcr=a:block "fat cursor
set ignorecase " Ignore case when searching
set laststatus=3 " always show statusline
set noexpandtab
set noshowmatch " matching bracks
set noswapfile "no swaps
set nowrap "noWrap lines
set nowritebackup
set number " show line numbers
set path+=** "make the find to search through dirs and subdirs
set relativenumber " show relativeline numbers
set shiftwidth=4
set signcolumn=yes "use numberline
set smartcase " When searching try to be smart about cases
set smartindent
set softtabstop-=1 "inherit from shiftwidth
set tabstop=4
set title
set whichwrap+=<,>,h,l "makes cursor move from one to another at ends
set wildmenu " Turn on the Wild menu
set winborder=rounded

" ->KEYMAPS
"--------------------------------------------------------------

nnoremap <Esc><Esc> <Cmd>nohlsearch<CR>

nnoremap <leader>w <Cmd>update<CR>
nnoremap <leader>bs <Cmd>ls<CR>:b<Space>
nnoremap <leader>bd <Cmd>bd<CR>
nnoremap <leader>te :tabe<Space>

nnoremap <leader>y :%y+<CR> | "system clipboard
xnoremap <leader>y "+y  | "system clipboard  all visual modes

tnoremap>   | "terminal mode >cuz yazi uses term

"-- plgn-spe-conf
"--------------------------------------------------------------

let g:no_filepicker_maps = 1 "unmap the default
nnoremap <silent> <leader>e <Plug>(FilePicker)

if exists("g:neovide")
let g:neovide_cursor_animation_length = 0
let g:neovide_padding_bottom = 3
let g:neovide_padding_left = 3
let g:neovide_padding_right = 3
let g:neovide_padding_top = 3
let g:neovide_text_contrast = 0.1 "alacritty
let g:neovide_text_gamma = 0.8
set linespace=0
endif

"--------------------------------------------------------------
"LUABLOCK
"--------------------------------------------------------------
lua << EOF
require("cman.lsp")
require("cman.plugins")
EOF
