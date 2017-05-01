@echo off

cd %USERPROFILE%\Desktop\benzo

:念のため、vagrantを停止
vagrant halt

:念のため、vagrantの状態を確認
vagrant status

set /P flg="vagrantは止まってましたか？(Y/N)"

echo "%flg%"

if "%flg%" == "Y" (

:vagrantが止まっていればこっち
echo いいみたい

echo コントロールパネルでvagrantをアンインストールしてちょ

set /P flg="vagrantは削除されましたか？(Y/N)"

if "%flg%" == "Y" (

:vagrantが削除されていたらこっち
echo いいみたいpart2

cd C:\Windows\System32

:virtualboxをアンインストール
MsiExec.exe /I{CD6E345E-ECBC-4F98-BB28-276ACBBCD4DE}

cd %USERPROFILE%\Desktop

:作業用ディレクトリの削除
rd /s /q benzo

dir

echo これで終わりだお！
) else (

:vagrantが削除されていなければこっち
echo ダメみたいpart2
)

) else (

:vagrantファイルがなければこっち
echo ダメみたい
)

pause