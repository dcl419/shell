#!/bin/bash

# $1 第一个位置参数 $2 第二个位置参数
case $1 in
t)
    touch $2;;
m)
    mkdir $2;;
r)
    rm -rf $2;;    
*)
echo "请输入t/m/r"  
esac # 结尾  