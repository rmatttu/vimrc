" Git for windowsのbashでvimを起動したときはdeinを呼びたくない
if has('gui_running')
    source $HOME/.vim/dein.vimrc
end
source $HOME/.vim/basic.vimrc
