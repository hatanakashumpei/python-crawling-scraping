#bin/bash

echo "###1:ファイル全体から目的の行を抜き出す###"
cat index.html | grep -E 'class="paging-number"'

echo "###2:class名の後に登場するハイフンという条件を加味して正規表現###"
cat index.html | grep -E 'class="paging-number".*-'

echo "###3:sedコマンドで総数だけ抜き出す###"
cat index.html | grep -E 'class="paging-number".*-' | sed -E 's@.*/ ([0-9]+).*@\1@'
