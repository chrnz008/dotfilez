vim9script

g:mapleader = ' ' #spc is better??

nnoremap <Esc><Esc> <Cmd>nohlsearch<CR>

nnoremap <leader>w <Cmd>update<CR>
nnoremap <leader>bs <Cmd>ls<CR>:b<Space>
nnoremap <leader>bd <Cmd>bd<CR>
nnoremap <leader>te :tabe<Space>

nnoremap <leader>y :%y+<CR> | # system clipboard
xnoremap <leader>y #+y  | # system clipboard for all visual modes

# emacs style for :
cnoremap <C-A>		<Home>
cnoremap <C-B>		<Left>
cnoremap <C-D>		<Del> | # kinda good defautl
# cnoremap <C-F>		<Right> #cant map bcuz of quickfiz

#zed
def ToggleLineNumbers()
	if &number
		set nonumber norelativenumber
	else
		set number relativenumber
	endif
enddef

nnoremap <silent> <leader>; :call ToggleLineNumbers()<CR>
