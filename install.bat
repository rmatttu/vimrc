@echo off
rem dein.vimを導入し、アドオンを整備します

pushd %0\..
cls

mkdir tmp

rem vim設定ファイル作成
( echo source ~/.vim/ideavimrc ) > %USERPROFILE%\.ideavimrc
( echo source ~/.vim/vsvimrc ) > %USERPROFILE%\.vsvimrc
( echo source $HOME/.vim/gvimrc ) > %USERPROFILE%\.gvimrc
(
    echo." Git for windowsのbashでvimを起動したときはdeinを呼びたくない
    echo.if has^('gui_running'^)
    echo.    source $HOME/.vim/dein.vimrc
    echo.end
    echo.source $HOME/.vim/basic.vimrc
) > %USERPROFILE%\.vimrc

pause

