# benzo_setup
Benzo2回目の勉強会までの環境ファイルの共有用リポジトリ  
(下記の作業をすると２回目に参加していない人も、同じ環境が手に入ります)

## 前提条件
### 下記のツールをインストールしていること
[VirtualBox(5.1)](https://www.virtualbox.org/)   
[vagrant(1.9.8)](https://www.vagrantup.com/)

## setup手順
1. boxファイルをダウンロード
下記のgoogleドライブより、自分のPCローカルにboxファイルを落としてください
https://drive.google.com/drive/u/0/folders/0B4RO2XJ0Np_pTTBiM1ExUnlHT3M

2. vagrantにboxを追加する
  ```bash
  ## boxファイルを落としたディレクトリに移動
  $ cd　/インストール先path/ 
  ## box追加のコマンドを実行
  $ vagrant box add BOX_NAME ./benzo_20170322.box`
  ```
3. box一覧への追加を確認  
  ```bash
  $ vagrant box list`
  ```
4. vagrantファイルを新規作成する
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
5. vagrant を起動し、ssh接続する
  ```sh
  ## サーバー起動
  $ vagrant up　　
  ## ssh接続
  #TeraTermなどのsshクライアントを使用する or 下記のコマンドで接続
  $vagrant ssh
  ```

## ここまで読んだら
![やってみよう](http://i2.wp.com/yakyuyakyu.link/wp/wp-content/uploads/2017/01/yjimage-1-10.jpg?fit=300%2C168)
