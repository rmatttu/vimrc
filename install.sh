#!/bin/sh

mkdir -p tmp

cat << EOT > ~/.vimrc
source \$HOME/.vim/vimrc
EOT

cat << EOT > ~/.gvimrc
source \$HOME/.vim/gvimrc
EOT

