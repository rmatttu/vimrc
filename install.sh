#!/bin/sh

mkdir -p tmp

cat << EOT > ~/.vimrc
source \$HOME/.vim/dein.vimrc
source \$HOME/.vim/basic.vimrc
EOT

cat << EOT > ~/.gvimrc
source \$HOME/.vim/gvimrc
EOT

