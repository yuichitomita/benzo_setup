# benzo_setup 
Benzo2回目の勉強会までの環境ファイルの共有用リポジトリ 
(下記の作業をすると２回目に参加していない人も、同じ環境が手に入ります) 

## 前提条件 
### 下記のツールをインストールしていること 
[VirtualBox(5.1)](https://www.virtualbox.org/) 
[vagrant(1.9.8)](https://www.vagrantup.com/) 

## setup手順 
1. boxファイルをダウンロード 
右下のダウンロードを押すとダウンロードできます
img 
gitコマンド入っていれば下記のコマンドで入手できます 
```bash 
$ git clone url 
``` 
- 参考サイト 
[使い始める-Gitのインストール](https://git-scm.com/book/ja/v1/%E4%BD%BF%E3%81%84%E5%A7%8B%E3%82%81%E3%82%8B-Git%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB) 

1. vagrantにboxを追加する 
```bash 
## boxファイルを落としたディレクトリに移動 
$ cd　/インストール先path/ 
## box追加のコマンドを実行 
$ vagrant box add BOX_NAME ./benzo_20170322.box` 
``` 
1. box一覧への追加を確認 
`$ vagrant box list` 
1. vagrantファイルを新規作成する 
```bash 
## 作業ディレクトリ作成 
$ mkdir ~/tmp 
## 作業ディレクトリへ移動 
$ cd ~/tmp 
## vagrantの初期化 
$ vagrant init VM_NAME 
## vagrantファイルができているのを確認 
$ cd ~/tmp && ls 
``` 
1. vagrant を起動し、ssh接続する 
```sh 
## サーバー起動 
$ vagrant up　　 
## ssh接続 
#windowsの場合は、 TeraTermなどのsshクライアントを使用する 
# macの場合は、下記のコマンドで接続 
$vagrant ssh 
``` 

## ここまで読んだら 
![やってみよう](http://i2.wp.com/yakyuyakyu.link/wp/wp-content/uploads/2017/01/yjimage-1-10.jpg?fit=300%2C168)

