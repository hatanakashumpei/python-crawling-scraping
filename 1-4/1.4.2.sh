#bin/bash

echo "###1:ファイル全体から書籍のタイトルを含むp要素を所得###"
cat index.html | grep 'itemprop="name"'

echo "###2:wcコマンドで行数を確認###"
cat index.html | grep 'itemprop="name"' | wc -l

echo "###3:brタグはスペースに置換し、その他のタグは除去する###"
cat index.html | grep 'itemprop="name"' | sed -E 's@<br/>@ @' | sed -E 's/<[^>]*>//g'

echo "###4:先頭に空白が残っているので削除する###"
cat index.html | grep 'itemprop="name"' | sed -E 's@<br/>@ @' | sed -E 's/<[^>]*>//g' | sed -E 's/^ *//'

echo "###5:&ampという文字列を&に置換###"
cat index.html | grep 'itemprop="name"' | sed -E 's@<br/>@ @' | sed -E 's/<[^>]*>//g' | sed -E 's/^ *//' | sed -E 's/&amp;/\&/g'
