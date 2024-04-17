#!/bin/bash

# expr
# expr 1 + 1 要有空格
# expr 1 - 1
# expr 2 '*' 2  或者 expr 2 \* 3
# expr 6 / 3 
# expr 6 % 5

# 使用$[]运算 $[1+1]  只负责运算
# echo $[1+1] 
# a = 1+1  a=1+1
# a = $[1+1] a=2  不用空格  $[2*2] 对*不用处理了  $[a+b] 变量前面不用加$了
# $[] = $(())

# 使用let命令，不输出结果，用于创建变量,或者变量的自增减
# let a=1+1  => let a++  let a+=2
# let a=a+1  => let a--  let a-=2  
# let a*=2  let a/=2

# bc 计算器
# echo "1.1 + 1” | bc
# echo "scale=3;10/3" | bc  显示3位小数

# 全局变量
# export 变量名  要发布全局变量，就像$USER 一样,所有的进程都能使用
# 创建全局变量 export b=20 



