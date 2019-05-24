find /etc -type f -print0 2> /dev/null | xargs -0 grep -l  '172.16.40.1' 2> /dev/null
