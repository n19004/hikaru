for file in "$@"
do
    if [ -f "$file" ]; then
        # duでファイル容量を求める
        du "$file"
    else
        # エラーメッセージ
        echo "${file}: 通常のファィルではありません"
    fi
done
