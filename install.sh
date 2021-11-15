#!/bin/sh

mkdir -p tmp
mkdir -p local/vsnip

cat << EOT > ~/.vimrc
source \$HOME/.vim/vimrc
EOT

cat << EOT > ~/.gvimrc
source \$HOME/.vim/gvimrc
EOT
