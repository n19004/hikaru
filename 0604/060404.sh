if [ -d "$1" ]; then
    # ディレクトリ内のファイルが実行可能フアイルかチェックして
    # 実行可能フアイルであれば表示
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
