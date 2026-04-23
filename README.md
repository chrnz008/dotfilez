# dotfilez
-----

>software i cant live without

- crossplatform

1. vim/gvim
2. gnucoreutils
3. yazi

# windows
- changing the power plan to perfromace in powerplan in windows improves cursor
scrolling performance in vim

# vim
- `wget https://raw.githubusercontent.com/chrnz008/dotfilez/refs/heads/main/.config/vim/exrc`
<!-- use wget -O filename url (to modify ther filename accordingly)-->
- add ` set guicursor=a:block-blinkon0 "fat cursor - cursor blink ` to defaults.vim for vim --clean and alias it to *vimc or vi* in win32
- [X] fileformat issue (solved by forcing ff=unix for .vim ft)
- Why does vim-plug work in Linux even if it is set to .vim(which is rtp in
  linux)i am assuming even tho it is .vim there is no `vimrc` so vim again looks
  in XDG_CONFIG so it works(for windows it is meh cuz vimfiles is rtp)
- ***installing wezterm on windows somehow solves the cursor flicker in alacritty***
