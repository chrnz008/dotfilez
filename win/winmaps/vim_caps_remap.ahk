; Map CapsLock to Escape
CapsLock::Esc

; If Shift + CapsLock is pressed, toggle real Caps Lock
+CapsLock::
SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"
return

