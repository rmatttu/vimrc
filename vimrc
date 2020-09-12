if has('win32') || has('win64')
  set packpath& packpath+=~/.vim
  set encoding=utf-8
  source ~/.vim/local/py.vimrc
endif
source ~/.vim/basic.vimrc
source ~/.vim/start.vimrc
source ~/.vim/opt.vimrc

