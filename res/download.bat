@echo off
TITLE PocketMine-MP Download
setlocal

pushd "%~dp0"

set TARGET_FILE=PocketMine-MP.phar
set TARGET_BASE=http://jenkins.pmmp.io/job/PocketMine-MP/lastSuccessfulBuild/artifact/PocketMine-MP.phar
set CURL_CMD=%TARGET_BASE% -o %TARGET_FILE% -#
set OLD_DIR=old



IF NOT EXIST %OLD_DIR% (
    echo ^> %OLD_DIR%���쐬���܂�
    mkdir %OLD_DIR%
)
move %TARGET_FILE% %OLD_DIR%/%TARGET_FILE%
echo ^> %TARGET_FILE% ���R�s�[���܂���
echo ^> %TARGET_BASE% �ɃA�N�Z�X���܂�
echo ^> %TARGET_FILE%���擾���Ă��܂�
curl %CURL_CMD%
echo ^> �_�E�����[�h���������܂���


popd

pause