#!/bin/bash

sum=0
while :
do 
    read -p "请输入数字（0是结束）: " x
    [ -z $x ] && continue # 如果是空，继续下一次循环
    [ $x -eq 0 ] && break # 0 退出循环
    let sum+=x
done

echo "和是 $sum"