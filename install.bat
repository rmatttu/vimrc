rem @echo off
rem dein.vim�𓱓����A�A�h�I���𐮔����܂�

rem �ȉ��X�N���v�g�{��-----------------------------------------------
rem ���̃o�b�`�����݂���t�H���_���J�����g��
pushd %0\..
cls

mkdir tmp

rem vim�ݒ�t�@�C���R�s�[
copy .ideavimrc %USERPROFILE%\
copy .vsvimrc %USERPROFILE%\
copy win\.vimrc %USERPROFILE%\
copy win\.gvimrc %USERPROFILE%\

pause

