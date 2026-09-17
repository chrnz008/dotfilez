@echo off

setlocal

REM alacritty
mklink /D "%APPDATA%\alacritty" "%~dp0.config\alacritty"

REM vim
mklink /D "%USERPROFILE%\vimfiles" "%~dp0.config\vim"

REM yazi
mklink /D "%APPDATA%\yazi\config" "%~dp0.config\yazi"

REM wtabs
set wtabsurl=https://github.com/leafOfTree/WindowTabs/releases/download/v2025.06.30/WindowTabs.exe
set shell.startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
curl -fLO "%wtabsurl%" --output-dir "%shell.startup%"


REM TODO
REM caps.reg
REM ahk to shell:startup
endlocal
