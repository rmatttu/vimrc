@echo off
rem dein.vim�𓱓����A�A�h�I���𐮔����܂�

pushd %0\..
cls

mkdir tmp

rem vim�ݒ�t�@�C���쐬
( echo source ~/.vim/ideavimrc ) > %USERPROFILE%\.ideavimrc
( echo source ~/.vim/vsvimrc ) > %USERPROFILE%\.vsvimrc
( echo source $HOME/.vim/gvimrc ) > %USERPROFILE%\.gvimrc
(
    echo." Git for windows��bash��vim���N�������Ƃ���dein���Ăт����Ȃ�
    echo.if has^('gui_running'^)
    echo.    source $HOME/.vim/dein.vimrc
    echo.end
    echo.source $HOME/.vim/basic.vimrc
) > %USERPROFILE%\.vimrc

pause

