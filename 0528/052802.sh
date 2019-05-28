cat /etc/services | awk '/80\/tcp/{print $0}' | awk 'NR==1'
