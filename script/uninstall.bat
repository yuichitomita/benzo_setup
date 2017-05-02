@echo off
cd %USERPROFILE%\Desktop\benzo

:Just in case, vagrant is halt.
vagrant halt

:Just in case, confirm vagrant status.
vagrant status

set /P flg="vagrant is halted？(Y/N)"

echo "%flg%"

if "%flg%" == "Y" (

	:Success part1
	echo Successfully halted

	echo Uninstall vagrant on Controll-Panel

	set /P flg="vagrant is deleted？(Y/N)"

	if "%flg%" == "Y" (

		:Success part2
		echo Succesfully deleted

		cd C:\Windows\System32

		:Uninstall the vurtualbox.
		MsiExec.exe /I{CD6E345E-ECBC-4F98-BB28-276ACBBCD4DE}

		cd %USERPROFILE%\Desktop

		:Delete work directory.
		rd /s /q benzo

		dir

		echo Finish!!!!！
	) else (

		:Not success part2
		echo Vagrant isnt deleted
	)

) else (

	:Not success part1
	echo Vagrant isnt halted
)

pause