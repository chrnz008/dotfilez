; i3-style navigation
; window snaps
!h::Send "#{Left}"
!j::Send "#{Down}"
!k::Send "#{Up}"
!l::Send "#{Right}"
;desktop management
#^h::Send "#^{Left}"
#^l::Send "#^{Right}" ;not working

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
!t::Send("#3")

; Open Firefox
!b::Send("#1")

;Open gvim
; !e::Run("gvim",EnvGet("USERPROFILE"))
!e::Send("#4") ;task bar win num emulation much better
