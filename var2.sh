#!/bin/bash
echo $1 # a
echo $2 # b
echo $3 # c
echo $* # a b c d  所有位置参数
echo $# # 4  位置参数的个数
echo $$ # 51170 当前进程的进程号
echo $? # 0 判断上一条指令是否执行成功，0是成功，非0是失败 非常重要

# bash var.sh a b c d
