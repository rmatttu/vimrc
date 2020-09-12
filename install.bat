REM vim: set fenc=cp932 ff=dos nomodified:

@echo off
rem dein.vimを導入し、アドオンを整備します

pushd %0\..
cls

mkdir tmp

rem vim設定ファイル作成
(echo source ~/.vim/ideavimrc) > %USERPROFILE%\.ideavimrc
(echo source ~/.vim/vsvimrc) > %USERPROFILE%\.vsvimrc
(echo source ~/.vim/gvimrc) > %USERPROFILE%\.gvimrc
(echo.source ~/.vim/vimrc) > %USERPROFILE%\.vimrc

rem deoplete.nvim
pip3 install --user pynvim

pause

