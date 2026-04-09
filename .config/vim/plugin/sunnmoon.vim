if ( g:colors_name ==# 'quiet')
	let s:curhour = str2nr(strftime("%H"))
	if (s:curhour > 5 && s:curhour < 18)
		set background=light
	else
		set background=dark
	endif
endif
