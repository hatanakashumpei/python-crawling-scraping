#bin/bash
### cut
echo "$ cat yakei_kobe.csv | cut -d , -f 1,2"
# -d:区切り文字
# -f:列の番号
cat yakei_kobe.csv | cut -d , -f 1,2

### sed
echo "$ cat yakei_kobe.csv | sed 's/,/ /g'"
# ,(カンマ)をスペースに置き換えて出力
# g:1行に検索する正規表現が複数回出現してもすべて置き換える
cat yakei_kobe.csv | sed 's/,/ /g'