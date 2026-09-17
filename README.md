# dotfilez
-----

# windows
using win32\caps.reg instead of win32\ahk\hhkb.ahk it is slightly modifed from script mentioned in https://www.microsoft.com/en-us/research/wp-content/uploads/2016/08/Win-32-Cheat-Sheet.pdf
- `wget https://raw.githubusercontent.com/chrnz008/dotfilez/refs/heads/main/win32/caps.reg`
- [wtabs](https://github.com/leafOfTree/WindowTabs) for [alacritty](#alacritty)
- can add a shortcut for an application by in properties :)

# vim
```wget https://github.com/chrnz008/dotfilez/raw/refs/heads/main/.config/vim/vimrc```
<!-- use wget -O filename url (to modify ther filename accordingly)-->
- [X] fileformat issue (solved by forcing ff=unix for .vim ft)
- nnoremap <Esc><Esc> <Cmd>nohlsearch<CR> ( or remap <C-l> to both redrew and noh)
- may need to define t_SR for linux console and need (t_SI and t_EI) for t_SR to work

# alacritty
- [ ] get rid of win32.toml alacritty (or just ignore it in *ix systems)
- (font to use consolas looks good with offset={x=1,y=1} like gvim)
> [!NOTE]  
> the cursor flicker is not happening in powershell??

## todo
- [.] start using a script to autoinstall (or complete [hedwig](https://github.com/chrnz008/hedwig))
- [ ] vim ffs problem on unix
- [ ] get rid of ahk
- [ ] sway,i3,gnome unused for a long time(start from scratch???)
- [ ] remove .emacs.el ??
- [ ] switch to powershell or internalize clink
