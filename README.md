# vimrc

.vimrc for Windows/Mac/linux by rmatttu


```bash
cd
git clone https://github.com/rmatttu/vimrc.git .vim
mkdir .vim/tmp
cat << EOT > .vimrc
" Git for windowsのbashでvimを起動したときはdeinを呼びたくない
if has('gui_running')
    source $HOME/.vim/.dein.vimrc
end
source $HOME/.vim/.basic.vimrc
EOT
cat << EOT > .gvimrc
source $HOME/.vim/.gvimrc
EOT
```
