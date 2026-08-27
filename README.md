# dotfilez
-----

# windows
using win32\caps.reg instead of win32\ahk\hhkb.ahk it is slightly modifed from script mentioned in https://www.microsoft.com/en-us/research/wp-content/uploads/2016/08/Win-32-Cheat-Sheet.pdf
- `wget https://raw.githubusercontent.com/chrnz008/dotfilez/refs/heads/main/win32/caps.reg`
- ~~changing the power plan to perfromace in powerplan in windows improves cursor
scrolling performance in vim~~
- [wtabs](https://github.com/leafOfTree/WindowTabs) for [alacritty](#alacritty)
- can add a shortcut for an application by in properties :)

# vim
```wget https://github.com/chrnz008/dotfilez/raw/refs/heads/main/.config/vim/vimrc```
<!-- use wget -O filename url (to modify ther filename accordingly)-->
- [X] fileformat issue (solved by forcing ff=unix for .vim ft)
- nnoremap <Esc><Esc> <Cmd>nohlsearch<CR> ( or remap <C-l> to both redrew and noh)
- may need to define t_SR for linux console and need (t_SI and t_EI) for t_SR to work

# alacritty
- [X] alacritty vi mode cursor and search colors collide
- [ ] get rid of win32.toml alacritty
- (font to use consolas looks good with offset={x=1,y=1} like gvim)
- ***installing wezterm on windows somehow solves the cursor flicker in alacritty*** (because it ships conpty,OpenConsole and adds to path)
- the cursor flicker can be resolved by placing conpty.dll and OpenConsole.exe (alacritty doesnt ship them and uses native api if not found in path)

```
curl.exe -LO https://raw.githubusercontent.com/wezterm/wezterm/main/assets/windows/conhost/conpty.dll && curl.exe -LO https://raw.githubusercontent.com/wezterm/wezterm/main/assets/windows/conhost/OpenConsole.exe
```

*if facing an issue with above try copying after installing wezterm)*
- adding a two conpty.dll in alacritty path is bringinb back the flicker??

## todo
- [ ] start using a script to autoinstall (or complete [hedwig](https://github.com/chrnz008/hedwig))
- [ ] vim ffs problem on unix (also 'bg')
- [ ] get rid of ahk
- [ ] sway,i3,gnome unused for a long time(start from scratch???)
- [ ] remove .emacs.el ??
