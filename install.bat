REM vim: set fenc=cp932 ff=dos nomodified:

@echo off
rem dein.vim�𓱓����A�A�h�I���𐮔����܂�

pushd %0\..
cls

mkdir tmp
mkdir local/vsnip

rem vim�ݒ�t�@�C���쐬
(echo source ~/.vim/ideavimrc) > %USERPROFILE%\.ideavimrc
(echo source ~/.vim/vsvimrc) > %USERPROFILE%\.vsvimrc
(echo source ~/.vim/gvimrc) > %USERPROFILE%\.gvimrc
(echo.source ~/.vim/vimrc) > %USERPROFILE%\.vimrc

pause
