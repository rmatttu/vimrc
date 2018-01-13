#!/bin/bash


# install dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/dein.vim/


# clean
rm -f installer.sh


# setting my vim
cp .vimrc ~/
cp -r snip ~/.vim/
mkdir ~/.vim/tmp

