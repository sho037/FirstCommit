#!/bin/bash
echo "正常にクローン出来ているかを確認します。"
FILECHECK="firstcommitsfile/0983745983-90823897453982210983453894509897452-0897304952"
if [ ! -e $FILECHECK ]; then
    echo "リモートリポジトリ内のファイルを参照することができませんでした。カレントディレクトリを間違えている可能性があります。"
    echo "カレントディレクトリを~/myprogram/FirstCommitに変更をしてください"
    exit 1
    else 
    echo "ファイルを確認しました。"
    echo "0983745983-90823897453982210983453894509897452-0897304952 is exists."
fi
cmd //c tree 

git config --global core.autocrlf true