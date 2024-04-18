#!/bin/bash
# ping -c 3 -i 0.2 -W 1 127.0.0.1  
# -c 次数
# -i 间隔时间  单位s
# -W 1 ping 不通的时候，经过1s给结果

# $1 参数
ping -c 3 -i 0.2 -W 1 $1 &> /dev/null

# $? 上一句是否执行成功 0=成功 非0 不成功
if [ $? -eq 0 ];then
    echo "ping通了"
else
    echo "没ping通"
fi

# sh if2-ping.sh 127.0.0.1

