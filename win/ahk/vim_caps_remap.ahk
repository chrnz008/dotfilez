; Map CapsLock to Escape
CapsLock::Esc

; If Shift + CapsLock is pressed, toggle real Caps Lock
+CapsLock::
SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"

; Map Right Alt (AltGr) to behave as Left Alt
RAlt::Alt

return


