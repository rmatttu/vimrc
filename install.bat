rem @echo off
rem dein.vim�𓱓����A�A�h�I���𐮔����܂�
rem
rem


rem �ȉ��X�N���v�g�{��-----------------------------------------------
rem ���̃o�b�`�����݂���t�H���_���J�����g��
pushd %0\..
cls

rem vim�ݒ�t�@�C���R�s�[
xcopy .vim %USERPROFILE%\
copy .vimrc %USERPROFILE%\
copy .gvimrc %USERPROFILE%\
copy .ideavimrc %USERPROFILE%\
copy .vsvimrc %USERPROFILE%\
mkdir %USERPROFILE%\.vim\tmp

pause

