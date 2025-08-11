#!/bin/bash

# claspコマンドがなければエラー
if ! command -v clasp &> /dev/null; then
    echo "エラー: claspコマンドが見つかりません。" >&2
    exit 1
fi

# 引数の個数をチェック（引数が1つでなければエラー）
if [ $# -ne 1 ]; then
    echo "プロジェクト名を指定してください。" >&2
    echo "使用方法: $0 <プロジェクト名>" >&2
    exit 1
fi

ARG1="$1"
sed -e "s/PROJECT_NAME/${ARG1}/g" package.txt > package.json

# スクリプトを作成
clasp create-script --title "${ARG1}"

# distを作成
mkdir -p dist

# appsscript.jsonをdistに移動
mv appsscript.json dist/

# ビルド
npm install
npm run build

# push
clasp push
