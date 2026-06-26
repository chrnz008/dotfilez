vim9script

if ( g:colors_name ==# 'quiet')
	var curhour = str2nr(strftime("%H"))
	if (curhour > 5 && curhour < 18)
		set background=light
	else
		set background=dark
	endif
endif
