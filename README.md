# dotfilez
-----

# windows
using win32\caps.reg instead of win32\ahk\hhkb.ahk it is slightly modifed from script mentioned in https://www.microsoft.com/en-us/research/wp-content/uploads/2016/08/Win-32-Cheat-Sheet.pdf
- `wget https://raw.githubusercontent.com/chrnz008/dotfilez/refs/heads/main/win32/caps.reg`
- ~~changing the power plan to perfromace in powerplan in windows improves cursor
scrolling performance in vim~~
- [wtabs](https://github.com/leafOfTree/WindowTabs)
# vim
- `wget https://raw.githubusercontent.com/chrnz008/dotfilez/refs/heads/main/.config/vim/exrc`
<!-- use wget -O filename url (to modify ther filename accordingly)-->
- [X] fileformat issue (solved by forcing ff=unix for .vim ft)
    - for latest exrc the above problem can be resolved by 
        ```vimscript
        set nomodelinestrict #see :h modeline
        # vim: fileformat=unix
        ```
- Why does vim-plug work in Linux even if it is set to .vim(which is rtp in
  linux)i am assuming even tho it is .vim there is no `vimrc` so vim again looks
  in XDG_CONFIG so it works(for windows it is meh cuz vimfiles is rtp)
- ***installing wezterm on windows somehow solves the cursor flicker in alacritty in vim***
- nnoremap <Esc><Esc> <Cmd>nohlsearch<CR> ( or remap <C-l> to both redrew and noh)

# alacritty
- [ ] alacritty vi mode cursor and search colors collide
- [ ] get rid of win32.toml alacritty
- (font to use consolas looks good with offset={x=1,y=1} like gvim)

## todo
- [X] what about [dotfolders](https://github.com/chrnz008/dotfolders)
- [ ] start using a script to autoinstall (or complete [hedwig](https://github.com/chrnz008/hedwig))
- [ ] exrc ffs problem on unix (also 'bg')
- [ ] get rid of ahk
- [ ] sway,i3,gnome unused for a long time(start from scratch???)
- [ ] remove .emacs.el ??
- [ ] yazi (remove icons showing up when g<space>)
