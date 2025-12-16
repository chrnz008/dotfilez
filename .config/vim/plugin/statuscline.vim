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

set statusline=%{Modeconvention()}\ %{Spinner()}\ \ %<%f\ %h%w%m%r%=%-17.(%l,%c%V%)\ %P
