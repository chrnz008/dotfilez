function! Modeconvention()
	let s:modell=mode()
	if s:modell == "n"
		return "NOR"
	elseif s:modell == "i"
		return "INS"
	elseif s:modell ==# "v"
		return "VIS"
	elseif s:modell ==# "V"
		return "VIL"
	elseif s:modell ==# ""
		return "VIB"
	elseif s:modell == "R"
		return "REP"
	elseif s:modell == "c"
		return "COM"
	elseif s:modell == "t"
		return "TER"
	elseif s:modell == "s"
		return "SEL"
	else
		return s:modell
	endif
endfunction

"spinner{
let s:spinbody = ["⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷"]
let s:i=0
let s:pix=" "

augroup IO
	autocmd!
	autocmd BufFilePost,BufFilePre,CompleteChanged,CompleteDone * let s:i = (s:i + 1)%len(s:spinbody) "wrap
augroup END

function! Spinner()
	let s:pix=s:spinbody[s:i]
	return s:pix
endfunction
"}

"{OS
function! Os()
	if has("win64")
		return "dos"
	elseif has("unix")
		return "unx"
	else
		return "tux"
	endif
endfunction
"}

"{custom highlights
let s:bg = synIDattr(hlID('Normal'), 'bg#') "the statusline guibg
let s:sl_bg = synIDattr(hlID('StatusLine'), 'bg#') "the statusline guibg
let s:sl_fg = synIDattr(hlID('StatusLine'), 'fg#') "the statusline guibg
execute 'hi BLUE guifg=SlateBlue guibg=' . s:sl_bg
execute 'hi backg guibg =' . s:bg |"'guifg='. s:sl_fg
"}

set statusline=%#BLUE#%*\%{Modeconvention()}\ %{Spinner()}\ \ %<%f\ %h%w%m%r%=%-17.(%l,%c%V%)\ %{Os()}\ %P
