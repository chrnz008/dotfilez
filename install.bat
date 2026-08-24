@echo off

setlocal

REM alacritty
mklink /D "%APPDATA%\alacritty" "%~dp0.config\alacritty"

REM yazi
mklink /D "%APPDATA%\yazi\config" "%~dp0.config\yazi"

REM vim
mklink /D "%USERPROFILE%\vimfiles" "%~dp0.config\vim"

REM TODO
REM caps.reg
REM ahk to shell:startup
endlocal
