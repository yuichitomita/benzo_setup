@echo off

cd %USERPROFILE%\Desktop\benzo

:�O�̂��߁Avagrant���~
vagrant halt

:�O�̂��߁Avagrant�̏�Ԃ��m�F
vagrant status

set /P flg="vagrant�͎~�܂��Ă܂������H(Y/N)"

echo "%flg%"

if "%flg%" == "Y" (

:vagrant���~�܂��Ă���΂�����
echo �����݂���

echo �R���g���[���p�l����vagrant���A���C���X�g�[�����Ă���

set /P flg="vagrant�͍폜����܂������H(Y/N)"

if "%flg%" == "Y" (

:vagrant���폜����Ă����炱����
echo �����݂���part2

cd C:\Windows\System32

:virtualbox���A���C���X�g�[��
MsiExec.exe /I{CD6E345E-ECBC-4F98-BB28-276ACBBCD4DE}

cd %USERPROFILE%\Desktop

:��Ɨp�f�B���N�g���̍폜
rd /s /q benzo

dir

echo ����ŏI��肾���I
) else (

:vagrant���폜����Ă��Ȃ���΂�����
echo �_���݂���part2
)

) else (

:vagrant�t�@�C�����Ȃ���΂�����
echo �_���݂���
)

pause