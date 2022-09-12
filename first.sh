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

echo "このシェルスクリプトはGitの設定を楽にするために制作したものです。"
echo "もし、Gitの設定を終えている方、または自分で設定したい方はnを入力して終了してください"
echo "設定を開始する場合はyまたはYを入力してください"
YESORNO=y
echo -n "入力を受付中==>"
read YESORNO
if [ $YESORNO = y ] || [ $YESORNO = Y ]; then
    echo "Gitの設定を開始します。"
    echo "GITHUBアカウントのIDを入力してください。アカウントを所持していない場合は取得してきてください(その際はctrl+Cを押してください)"
    echo -n "入力を受付中==>"
    read github_account_name
    git config --global user.name $github_account_name
    echo "your account name is $your_account_name"
    echo "次はGITHUBカウントのEメールアドレスを入力してください。"
    echo -n "入力を受付中==>"
    read github_account_email
    git config --global user.email $github_account_email
    echo "your account email is $your_account_email"
    cat ~/.gitconfig
    else
    echo "終了します"
    exit 2
fi
# echo -n "入力待ちです。Y"

