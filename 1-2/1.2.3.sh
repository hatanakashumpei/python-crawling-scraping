#bin/bash
# -r：再帰的にDL
# -l：リンクをたどる深さを制限
# -w：ダウンロード間隔を空ける
# --no-parent：親ディレクトリをクロールしない
# --restrict-file-names=nocontrol：URLに日本語が含まれる場合に日本語のファイル名で保存すること
wget -r --no-parent -w 1 -l 1 --restrict-file-names=nocontrol https://gihyo.jp/dp/