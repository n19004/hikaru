usage()
{
    # シェルスクリプトのファィル名を取得
    local script_name=$(basename "$0")

    # ヒアドキュメントでヘルプを表示
    cat << END
使い方:060402.sh FILEPATH...
FILEPATHで指定したファイルの容量を表示
FILEPATH - 容量を求めるファイルのパスを指定、複数指定可
END
}

# コマンドライン引数が０個のとき　(何も指定されないとき)
if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi


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
