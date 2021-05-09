#bin/bash

# 画像を取得する
wget http://image.gihyo.co.jp/assets/templates/gihyojp2007/image/gihyojp_logo.png
# eog gihyojp_logo.png

# index.htmlを取得する
wget http://gihyo.jp/

# -Oオプションでファイル名で明示的に指定
wget http://gihyo.jp/ -O gihyo_top.html

# ファイル名としてハイフンを指定すると標準出力に出力できる
# -q オプションは進捗状況などの表示を制御する
wget http://gihyo.jp/ -q -O -
