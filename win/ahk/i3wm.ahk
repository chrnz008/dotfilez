; i3-style navigation
!h::Send "#{Left}"
!j::Send "#{Down}"
!k::Send "#{Up}"
!l::Send "#{Right}"

; Quit window
!q::WinClose("A")

; Minimize active window
!m::WinMinimize("A")

; Toggle fullscreen
!f::
{
    state := WinGetMinMax("A")
    if (state = 1)
        WinRestore("A")
    else
        WinMaximize("A")
}

; Open Alacritty
!t::Run("C:\Program Files\Alacritty\alacritty.exe")

; Open Firefox
!b::Run("C:\Program Files\Mozilla Firefox\firefox.exe")

;Open gvim
; !e::Run("gvim",EnvGet("USERPROFILE"))
!e::Send("#4") ;task bar win num emulation much better
