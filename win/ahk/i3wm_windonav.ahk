; i3-style-windownav
!h::Send, #{Left}    ; Alt + H → Win + Left
!j::Send, #{Down}    ; Alt + J → Win + Down
!k::Send, #{Up}      ; Alt + K → Win + Up
!l::Send, #{Right}   ; Alt + L → Win + Right

;quit windows
!q::WinClose, A ; Close the active window ; Alt+Q 
return

; minimize active window
!m::WinMinimize, A    ; Alt + M 26 Minimize current window
return

; toggle fullscreen (maximize / restore)
!f::
    WinGet, state, MinMax, A
	if (state = 1) {
		        WinRestore, A
				    
	} else {
		        WinMaximize, A
				    
	}
	return

; Open Alacritty terminal
!t::Run, "C:\Program Files\Alacritty\alacritty.exe"
return

; open browser (Firefox in this example)
!b::Run, "C:\Program Files\Mozilla Firefox\firefox.exe"
return
