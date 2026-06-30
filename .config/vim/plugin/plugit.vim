vim9script

# not gonna carry plug with me vro
var data_dir = has('win64') ? "~/vimfiles" : "~/.config/vim" #linux doesnt support batch
if empty(glob(data_dir .. '/plugit.bat'))
	silent execute '!curl -fLo ' .. fnamemodify(data_dir .. '/plugit.bat', ':p:S') .. ' https://github.com/chrnz008/plugit/raw/refs/heads/main/plugit.bat'
endif
