#!/bin/bash

x=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

pwd_len=8
# for i in {1..8}

for ((j=0;j<=100;j++))

do
    passwd= # 初始化
    for ((i=0;i<=pwd_len;i++))
    do
        n=$[RANDOM%62]
        random_char=${x:n:1}
        # echo $random_char
        # passwd+=$random_char
        passwd=$random_char$passwd
    done
    echo $passwd

done

# 使用source时，只有一个bash 数据变量不会清理
