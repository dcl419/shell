#!/bin/bash

set_color(){
    # echo -e "\033[$1m$2\033[0m"
    echo "\033[$1m$2\033[0m"
}
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
        # 32 绿色  31 红色
        [ $? -eq 0 ] && set_color 32 "nginx 正在运行" || set_color 31 "nginx未开启";;
    *)
        echo “请输入start或者stop”;;
esac