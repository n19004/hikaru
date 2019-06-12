usage()
{
    # シェルスクリプトのファイル名を取得
    local script_name=$(basename "$0")

    # ヒアドキュメントでヘルプを表示
    cat << END
使い方: 060403.sh DIRPATH...
 DIRPATHで指定したディレクトリ下の実行可能フアイルの一覧表示
　FILEPATH -　実行可能ファイルの一覧表示を行うディレクトリパスを指定
END
}
# コマンドライン引数が０個のとき(何も指定されないとき)
if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi


if [ -d "$1" ]; then
    # ディレクトリ内のファイルが実行可能ファイルかチェックして
    # 実行可能ファイルであれば表示
    #for file in $(ls "$1")
    for file in $(find "$1" -maxdepth 1 -type f)
    do
        # fileが実行可能であれば表示
        #if [ -x "${1}/${file}" ] && [ ! -d "${1}/${file}" ]; then
        if [ -x "$file" ]; then
            #echo "$file"
            #echo `basename "$file"`
            echo $(basename "$file")
            #sudo ls -l "${file}"
        fi
    done
 else
     # エラーメッセージ
    echo "${1}: ディレクトリではありません"
fi
