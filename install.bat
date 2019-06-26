@echo off
rem dein.vimを導入し、アドオンを整備します

pushd %0\..
cls

mkdir tmp

rem vim設定ファイル作成
rem TODO ~/と$HOMEで違いがあるか
(echo source ~/.vim/ideavimrc) > %USERPROFILE%\.ideavimrc
(echo source ~/.vim/vsvimrc) > %USERPROFILE%\.vsvimrc
(echo source ~/.vim/.gvimrc) > %USERPROFILE%\.gvimrc
(echo.source ~/.vim/.vimrc) > %USERPROFILE%\.vimrc

pause

