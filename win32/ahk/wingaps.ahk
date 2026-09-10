#Requires AutoHotkey v2.0

#g::{
    gap := 15  ; uniform gap on all sides, in pixels

    ; Find which monitor the active window is currently on
    WinGetPos(&winX, &winY, &winW, &winH, "A")
    winCenterX := winX + winW / 2
    winCenterY := winY + winH / 2

    targetMon := 1
    Loop MonitorGetCount() {
        MonitorGet(A_Index, &mLeft, &mTop, &mRight, &mBottom)
        if (winCenterX >= mLeft && winCenterX < mRight
            && winCenterY >= mTop && winCenterY < mBottom) {
            targetMon := A_Index
            break
        }
    }

    ; Work area excludes the taskbar automatically, on whichever edge it's docked
    MonitorGetWorkArea(targetMon, &waLeft, &waTop, &waRight, &waBottom)

    newX := waLeft + gap
    newY := waTop + gap
    newW := (waRight - waLeft) - gap * 2
    newH := (waBottom - waTop) - gap * 2

    WinRestore("A")
    WinMove(newX, newY, newW, newH, "A")
}
