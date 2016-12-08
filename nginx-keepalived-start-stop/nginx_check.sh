#!/bin/bash
#nginx_check.sh
while :
do
	nginxpid=`ps -C nginx --no-header |wc -l`
	if [ $nginxpid -eq 0 ];then
		echo "date : `date`, nginx is down, stop keepalived service." >> check.log
		service keepalived stop
		break
	fi

	sleep 3
done
