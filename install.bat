rem @echo off
rem dein.vimを導入し、アドオンを整備します

rem 以下スクリプト本文-----------------------------------------------
rem このバッチが存在するフォルダをカレントに
pushd %0\..
cls

mkdir tmp

rem vim設定ファイルコピー
copy .ideavimrc %USERPROFILE%\
copy .vsvimrc %USERPROFILE%\
copy win\.vimrc %USERPROFILE%\
copy win\.gvimrc %USERPROFILE%\

pause

