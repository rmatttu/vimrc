#!/usr/bin/env bash

set -e
set -u

now_text=$(date +%Y-%m-%d_%H-%M-%S)
old_dir=~/old-config-vim-$now_text

# Backup if exists
if [[ -e ~/.config/vim ]]; then
  mkdir -pv "$old_dir"
  mv -v ~/.config/vim "$old_dir"
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
  echo "copy $(pwd)/ to ~/.config/vim/"
  rsync -a \
    --exclude ".gitignore" \
    --exclude ".gitmodules" \
    --exclude ".git" \
    --exclude ".github" \
    --exclude "dev-tool" \
    ./ ~/.config/vim/
)

mkdir -pv ~/.config/vim/tmp/
mkdir -pv ~/.config/vim/local/
mkdir -pv ~/.config/vim/howm/

echo "Create ~/.vimrc, ~/.gvimrc"
cat <<EOT >~/.vimrc
source ~/.config/vim/vimrc
EOT
cat <<EOT >~/.gvimrc
source ~/.config/vim/gvimrc
EOT
