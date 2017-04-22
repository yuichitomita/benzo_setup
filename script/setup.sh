#!/bin/bash
#
############################################################
# プログラム名   :setup.sh
# 処理概要       :指定したboxファイルからsetup手順自動化スクリプト
# 新規作成日     :2017/04/20
# 新規作成者     :yuichitomita
############################################################
export LANG=es_US.UTF-8
export LC_ALL=en_US.UTF-8

DIRNAME=`dirname $0`

# 使用方法
printusage() {
 echo "使用方法" 1>&2
 echo "-b 必須 boxファイル名 例) XXX.box"
}

# パラメーター取得
while getopts b: OPT
do
 case $OPT in
  "b") BOX_FILE_NAME="$OPTARG";;
  "*") printusage;;
 esac
done

# 引数の確認
if [ -z "${BOX_FILE_NAME}" ]; then
 printusage
 exit 1
fi

# box名取得
BOX_NAME=`echo ${BOX_FILE_NAME} | sed 's/.[^.]*$//'`
echo "boxname: ${BOX_NAME}"

box_list=`vagrant box list | grep "${BOX_NAME}"`

# boxファイルの確認
if [ ! -z "${box_list}" ]; then
 # すでに同名で存在する場合は強制削除
 vagrant box remove --force ${BOX_NAME}
fi

# box追加
vagrant box add ${BOX_NAME} ./${BOX_FILE_NAME}

if [ $? -gt 0 ]; then
 # エラー処理
 echo
 echo "#########################################################"
 echo "# vagrant box add Error                                  "
 echo "# command: vagrant box add ${BOX_NAME} ./${BOX_NAME}.box "
 echo "#                                                        "
 echo "#########################################################"
 exit 1
fi

# Vagrantfileの作成
vagrant init --minimal ${BOX_NAME}

if [ $? -gt 0 ]; then
 # エラー処理
 echo
 echo "#############################################"
 echo "# vagrant init Error                         "
 echo "# command: vagrant init --minimal ${BOX_NAME}"
 echo "#                                            "
 echo "#############################################"
 exit 1
fi

# ネットワーク設定の追加
 sed -i -e "2a\  config.vm.network :private_network, ip:"192.168.33.10\" Vagrantfile

 echo
 echo "####### ####### ##       ## ###### #     ##### ##### ######"
 echo "#       #     # # #     # # #    # #     #       #   #     "
 echo "#       #     # #  #   #  # ###### #     #####   #   ######"
 echo "#       #     # #   # #   # #      #     #       #   #     "
 echo "####### ####### #    #    # #      ##### #####   #   ######"
