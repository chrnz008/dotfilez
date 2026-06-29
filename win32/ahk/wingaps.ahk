#g::{
    left_gap   := 5
    top_gap    := 20
    ; random
    win_width  := A_ScreenWidth - left_gap*3
    win_height := A_ScreenHeight - top_gap*4

    WinRestore("A")
    WinMove(left_gap, top_gap, win_width, win_height, "A")
}
