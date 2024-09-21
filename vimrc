if (has('win32') || has('win64')) && has('gui_running')
  set packpath& packpath+=~/.config/vim
  set encoding=utf-8
endif

source ~/.config/vim/basic.vimrc
source ~/.config/vim/start.vimrc
source ~/.config/vim/opt.vimrc
