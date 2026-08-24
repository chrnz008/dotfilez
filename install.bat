@echo off

setlocal

REM alacritty
mklink /D "%APPDATA%\alacritty" "%CD%\.config\alacritty"

REM yazi
mklink /D "%APPDATA%\yazi\config" "%CD%\.config\yazi"

REM vim
mklink /D "%USERPROFILE%\vimfiles" "%CD%\.config\vim"

REM TODO
REM caps.reg
REM ahk to shell:startup
endlocal
