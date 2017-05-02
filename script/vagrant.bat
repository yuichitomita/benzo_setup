@echo off
:Move to directory downloaded box is set.
cd %USERPROFILE%/Downloads

:Add box(centos6.5_box)
vagrant box add centos6.5_box ./benzo.box

:Display box list.
vagrant box list

:Confirm added box.
set /P flg="Are there centos6.5_box？(Y/N)"

if "%flg%" == "Y" (

:Success part1
echo Success!

:Make work directory.
mkdir %USERPROFILE%\Desktop\benzo

:Move to work directory
cd %USERPROFILE%\Desktop\benzo

:Initialize vagrant
vagrant init centos6.5_box

:Confirm Vagrantfile
cd %USERPROFILE%\Desktop\benzo & dir

set /P flg="Are there Vagrantfile？(Y/N)"

if "%flg%" == "Y" (

:Success part2
echo Success part2!

echo Finish!!!!!!!!!
) else (

:Not success part2
echo There arent Vagrantfile
)
) else (
:Not success part1
echo There arent centos6.5_box
)
pause