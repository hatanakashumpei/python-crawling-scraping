#bin/bash
### 正規表現1
echo "$ cat yakei_kobe.csv | grep -E '^1'"
# 行頭に1という文字列がある行のみマッチ
cat yakei_kobe.csv | grep -E '^1'

### 正規表現2
# 5文字のスポット名だけをマッチ
echo "$ cat yakei_kobe.csv | grep -E ',.{5},'"
cat yakei_kobe.csv | grep -E ',.{5},'