set guioptions+=M
:let g:did_install_default_menus = 1

"vim plug --ontop
"-------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Konfekt/filepicker.vim' "use yazi as filemanager 

Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'

call plug#end()
"--------------------------------------------------------------
source $MYVIMDIR/vimrc
"-- plgn-spe-conf
"-------------------------------------------------------------- 
"
let g:vimwiki_list = [{'path': 'G:/My Drive/notes', 'syntax': 'markdown','ext': '.md'}]  "vimwiki

let g:no_filepicker_maps = 1 "unmap the default
nnoremap <silent> <leader>e <Plug>(FilePicker)

"-------------------------------------------------------------

"competitive programming stuff
set makeprg=g++\ %\ -o\ %<
autocmd BufNewFile *.cpp 0r C:/Users/chr_58/Desktop/dotfilez/tmplt/cp/template.cpp  "template
