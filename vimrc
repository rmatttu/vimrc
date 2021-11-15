if (has('win32') || has('win64')) && has('gui_running')
  set packpath& packpath+=~/.vim
  set encoding=utf-8
endif

source ~/.vim/basic.vimrc
source ~/.vim/start.vimrc
source ~/.vim/opt.vimrc
