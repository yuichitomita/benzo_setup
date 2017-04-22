# setup.sh

## 概要
指定したboxファイルから仮想環境のsetupを自動で行うスクリプト  

## 使用方法
```shell
$ ./setup.sh -b benzo.box
```

## オプション
-b 必須 boxファイル名

## 実行結果例
```shell
script 16:01:48 $ ./setup.sh -b benzo.box
boxname: benzo
==> box: Box file was not detected as metadata. Adding it directly...
==> box: Adding box 'benzo' (v0) for provider:
    box: Unpacking necessary files from: file:///Users/Tomi/src/benzo_setup/script/benzo.box
==> box: Successfully added box 'benzo' (v0) for 'virtualbox'!
A `Vagrantfile` has been placed in this directory. You are now
ready to `vagrant up` your first virtual environment! Please read
the comments in the Vagrantfile as well as documentation on
`vagrantup.com` for more information on using Vagrant.
sed: 1: "2a\  config.vm.network  ...": extra characters after \ at the end of a command

####### ####### ##       ## ###### #     ##### ##### ######
#       #     # # #     # # #    # #     #       #   #
#       #     # #  #   #  # ###### #     #####   #   ######
#       #     # #   # #   # #      #     #       #   #
####### ####### #    #    # #      ##### #####   #   ######
```
