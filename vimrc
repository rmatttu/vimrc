source ~/.vim/basic.vimrc
if has('win32') || has('win64')
  set packpath& packpath+=~/.vim
endif
source ~/.vim/start.vimrc
source ~/.vim/opt.vimrc

