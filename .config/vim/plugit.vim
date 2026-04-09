"not gonna carry plug with me vro
let data_dir = has('win64') ? '~/vimfiles' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.fnamemodify(data_dir.'/autoload/plug.vim', ':p:S').' --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

Plug 'Konfekt/filepicker.vim' "use yazi as a file manager
Plug 'chrnz008/gruber.vim'
Plug 'chrnz008/quack.vim'
Plug 'chrnz008/reykjavik'
Plug 'chrnz008/schizo.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
"experimental
Plug 'chrisbra/colorizer' "chekout habamax inline_colors
Plug 'mattn/vim-smear-cursor'
" Plug 'yegappan/lsp'

call plug#end()

"-- plgn-spe-conf
let g:no_filepicker_maps = 1 "unmap the default
nnoremap <silent> <leader>e <Plug>(FilePicker)
