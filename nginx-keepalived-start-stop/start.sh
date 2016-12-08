#!/bin/bash
#start.sh

echo "start nginx"
/home/nebula/nginx/sbin/nginx  >> check.log 2>&1

echo "start keepalived service"
service keepalived start >> check.log 2>&1

echo "start check nginx check bash"
nohup sh /home/nebula/nginx/sbin/nginx_check.sh >> check.log 2>&1 &

echo "start over"
