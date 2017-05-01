@echo off

:boxをダウンロードしたディレクトリに移動
cd %USERPROFILE%/Downloads

:box追加(centos6.5_box)
vagrant box add centos6.5_box ./benzo.box

:box一覧を表示
vagrant box list

:追加したboxの存在確認
set /P flg="centos6.5_boxはありましたか？(Y/N)"

if "%flg%" == "Y" (

:追加できたらこっち
echo いいみたい

:作業用ディレクトリを作成
mkdir %USERPROFILE%\Desktop\benzo

:作業用ディレクトリに移動
cd %USERPROFILE%\Desktop\benzo

:vagrantを初期化
vagrant init centos6.5_box

:vagrantファイルができてるか確認
cd %USERPROFILE%\Desktop\benzo & dir

set /P flg="vagrantfileはありましたか？(Y/N)"

if "%flg%" == "Y" (

:vagrantファイルがあればこっち
echo いいみたいpart2

:vagrantを起動
vagrant up

echo これで終わりだお！
) else (

:vagrantファイルがなければこっち
echo ダメみたいpart2
)
) else (
:追加できなかったらこっち
echo ダメみたい
)
pause