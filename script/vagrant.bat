@echo off

:box���_�E�����[�h�����f�B���N�g���Ɉړ�
cd %USERPROFILE%/Downloads

:box�ǉ�(centos6.5_box)
vagrant box add centos6.5_box ./benzo.box

:box�ꗗ��\��
vagrant box list

:�ǉ�����box�̑��݊m�F
set /P flg="centos6.5_box�͂���܂������H(Y/N)"

if "%flg%" == "Y" (

:�ǉ��ł����炱����
echo �����݂���

:��Ɨp�f�B���N�g�����쐬
mkdir %USERPROFILE%\Desktop\benzo

:��Ɨp�f�B���N�g���Ɉړ�
cd %USERPROFILE%\Desktop\benzo

:vagrant��������
vagrant init centos6.5_box

:vagrant�t�@�C�����ł��Ă邩�m�F
cd %USERPROFILE%\Desktop\benzo & dir

set /P flg="vagrantfile�͂���܂������H(Y/N)"

if "%flg%" == "Y" (

:vagrant�t�@�C��������΂�����
echo �����݂���part2

:vagrant���N��
vagrant up

echo ����ŏI��肾���I
) else (

:vagrant�t�@�C�����Ȃ���΂�����
echo �_���݂���part2
)
) else (
:�ǉ��ł��Ȃ������炱����
echo �_���݂���
)
pause