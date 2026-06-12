# dotfilez
-----

# windows
using win32\caps.reg instead of win32\ahk\hhkb.ahk it is slightly modifed from script mentioned in https://www.microsoft.com/en-us/research/wp-content/uploads/2016/08/Win-32-Cheat-Sheet.pdf
- `wget `
- changing the power plan to perfromace in powerplan in windows improves cursor
scrolling performance in vim

# vim
- `wget https://raw.githubusercontent.com/chrnz008/dotfilez/refs/heads/main/.config/vim/exrc`
<!-- use wget -O filename url (to modify ther filename accordingly)-->
- add ` set guicursor=a:block-blinkon0 "fat cursor - cursor blink ` to defaults.vim for vim --clean and alias it to *vimc or vi* in win32
- [X] fileformat issue (solved by forcing ff=unix for .vim ft)
    - for latest exrc the above problem can be resolved by 
        ```vimscript
        set modeline nomodelinestrict #see :h modeline
        # vim: fileformat=unix
        ```
- Why does vim-plug work in Linux even if it is set to .vim(which is rtp in
  linux)i am assuming even tho it is .vim there is no `vimrc` so vim again looks
  in XDG_CONFIG so it works(for windows it is meh cuz vimfiles is rtp)
- ***installing wezterm on windows somehow solves the cursor flicker in alacritty in vim***
- nnoremap <Esc><Esc> <Cmd>nohlsearch<CR> ( or remap <C-l> to both redrew and noh)
