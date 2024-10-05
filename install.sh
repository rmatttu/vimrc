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
  mkdir -pv ~/.config/vim/
  echo "copy $(pwd)/ to ~/.config/vim/"
  echo "-------"
  find . -maxdepth 1 -mindepth 1 \
    -not -path "./.gitignore" \
    -not -path "./.gitmodules" \
    -not -path "./.git" \
    -not -path "./.github" \
    -not -path "./dev-tool" \
    -exec cp -rp {} ~/.config/vim/ \; \
    -print
  echo "-------"
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
