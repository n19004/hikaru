cut -d : -f 1,7 /etc/passwd | grep /bin/bash | sort -n | cut -d : -f 1 
