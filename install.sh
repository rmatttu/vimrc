#!/usr/bin/env bash

set -e
set -u

now_text=$(date +%Y-%m-%d_%H-%M-%S)
old_dir=~/old-config-vim-$now_text

# Backup if exists
if [[ -e ~/.vim ]]; then
  mkdir -pv "$old_dir"
  mv -v ~/.vim "$old_dir"
fi
if [[ -e ~/.vimrc ]]; then
  mkdir -pv "$old_dir"
  mv -v ~/.vimrc "$old_dir"
fi
if [[ -e ~/.gvimrc ]]; then
  mkdir -pv "$old_dir"
  mv -v ~/.gvimrc "$old_dir"
fi

(
  cd "$(dirname "$0")"
  echo "copy $(pwd)/ to ~/.vim/"
  rsync -a \
    --exclude ".gitignore" \
    --exclude ".gitmodules" \
    --exclude ".git" \
    --exclude ".github" \
    --exclude "dev-tool" \
    ./ ~/.vim/
)

mkdir -pv ~/.vim/tmp/
mkdir -pv ~/.vim/local/
mkdir -pv ~/.vim/howm/

echo "Create ~/.vimrc, ~/.gvimrc"
cat <<EOT >~/.vimrc
source ~/.vim/vimrc
EOT
cat <<EOT >~/.gvimrc
source ~/.vim/gvimrc
EOT
