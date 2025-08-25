; i3-style-windownav
!h::Send, #{Left}    ; Alt + H → Win + Left
!j::Send, #{Down}    ; Alt + J → Win + Down
!k::Send, #{Up}      ; Alt + K → Win + Up
!l::Send, #{Right}   ; Alt + L → Win + Right

;quit windows
!q::WinClose, A ; Close the active window ; Alt+Q 
return

; Open Alacritty terminal
!t::Run, "C:\Program Files\Alacritty\alacritty.exe"
return
