"not gonna carry plug with me vro
if !exists('*plug#begin')
	if  has('win64')
		silent execute '!powershell -c "ni -fo -it d $HOME/vimfiles/autoload; iwr https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -o $HOME/vimfiles/autoload/plug.vim"'
	else
		silent !curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	endif
endif
