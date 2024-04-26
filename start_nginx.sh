#!/bin/bash

case $1 in
    start|START|kai)
        /usr/local/nginx/sbin/nginx;;
    stop|STOP|guan)
        /usr/local/nginx/sbin/nginx -s stop;; 
    restart)
        /usr/local/nginx/sbin/nginx -s stop
        /usr/local/nginx/sbin/nginx;; 
    status)
        # netstat -ntulp | grep nginx &> /dev/null
        netstat -ntulp | grep -q nginx
        # -q 保持沉默 相当于 将输出 重定向到 &> /dev/null
        [ $? -eq 0 ] && echo "nginx 正在运行" || "nginx未开启";;
    *)
        echo “请输入start或者stop”;;
esac