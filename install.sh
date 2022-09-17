#!/usr/bin/env bash

set -e
set -u

now_text=`date +%Y-%m-%d_%H-%M-%S`
old_dir=~/old-config-vim-$now_text

# Backup if exists
if [[ -e ~/.config/vim ]]; then
	mkdir -p $old_dir
	mv ~/.config/vim $old_dir
fi
if [[ -e ~/.vimrc ]]; then
	mkdir -p $old_dir
	mv ~/.vimrc $old_dir
fi
if [[ -e ~/.gvimrc ]]; then
	mkdir -p $old_dir
	mv ~/.gvimrc $old_dir
fi

(
	cp -r ./ ~/.config/vim/
  cd ~/.config/vim
	mkdir -p tmp
	mkdir -p local/vsnip
)

cat << EOT > ~/.vimrc
source \$HOME/.config/vim/vimrc
EOT

cat << EOT > ~/.gvimrc
source \$HOME/.config/vim/gvimrc
EOT
