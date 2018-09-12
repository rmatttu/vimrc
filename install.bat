rem @echo off
rem dein.vimを導入し、アドオンを整備します
rem
rem


rem 以下スクリプト本文-----------------------------------------------
rem このバッチが存在するフォルダをカレントに
pushd %0\..
cls

rem vim設定ファイルコピー
xcopy .vim %USERPROFILE%\
copy .vimrc %USERPROFILE%\
copy .gvimrc %USERPROFILE%\
copy .ideavimrc %USERPROFILE%\
copy .vsvimrc %USERPROFILE%\
mkdir %USERPROFILE%\.vim\tmp

pause

