" halfbaked

autocmd ColorScheme * source <sfile> "source this whenever colo changed

if g:colors_name ==# 'wildcharm' || g:colors_name ==# 'slate' || g:colors_name ==# 'habamax'
	hi VertSplit guibg=NONE
elseif g:colors_name ==# 'quack'
	hi! link StatusLine CursorLine
endif

if g:colors_name ==# 'quiet'
	"this are stripped see https://github.com/neutaaaaan/iosvkem
	"opend a issue for cursors
	"monosvkem
	hi Added ctermfg=10 guifg=LimeGreen
	hi Changed ctermfg=9 guifg=DodgerBlue
	hi Removed ctermfg=12 guifg=Red
	if &background ==# 'dark'
		hi Cursor guifg=#dadada guibg=#000000
		hi CursorLineNr guifg=#20bbfc guibg=#000000 gui=NONE cterm=NONE
		hi Special guifg=#d02b61 guibg=NONE gui=NONE cterm=NONE
		hi String guifg=#5688af guibg=#000000 gui=NONE cterm=NONE
		hi TitleBar guibg=#303030
		hi StatusLine guifg=#a8a8a8 guibg=#1c1c1c
	else
		hi Cursor guifg=#000000 guibg=#d7d7d7
		hi CursorLineNr guifg=#080808 guibg=#d7d7d7 gui=bold cterm=NONE
		hi Special guifg=#aa053b guibg=NONE gui=NONE cterm=NONE
		hi String guifg=#0056b7 guibg=#d7d7d7 gui=NONE cterm=NONE
	endif
endif
