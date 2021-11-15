#!/usr/bin/env bash

set -e
set -u

cd `dirname $0`
mkdir -p tmp
mkdir -p local/vsnip

cat << EOT > ~/.vimrc
source \$HOME/.vim/vimrc
EOT

cat << EOT > ~/.gvimrc
source \$HOME/.vim/gvimrc
EOT
