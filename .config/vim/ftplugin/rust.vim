setlocal omnifunc=syntaxcomplete#Complete
" let g:rustfmt_autosave = 1 "old vim issues
nnoremap <buffer> <leader>rr <Cmd>RustRun<CR>
if executable("rustfmt")
	set formatprg=rustfmt
	nnoremap Q gggqG
endif

