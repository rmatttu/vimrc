@echo off
rem dein.vim�𓱓����A�A�h�I���𐮔����܂�

pushd %0\..
cls

mkdir tmp

rem vim�ݒ�t�@�C���쐬
rem TODO ~/��$HOME�ňႢ�����邩
(echo source ~/.vim/ideavimrc) > %USERPROFILE%\.ideavimrc
(echo source ~/.vim/vsvimrc) > %USERPROFILE%\.vsvimrc
(echo source ~/.vim/.gvimrc) > %USERPROFILE%\.gvimrc
(echo.source ~/.vim/.vimrc) > %USERPROFILE%\.vimrc

pause

