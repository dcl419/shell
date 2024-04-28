#!/bin/bash

# 截取
a=abcdef 
b=${a:2:2} # 从第二个字符开始（0开始计数），截取2位

echo $b # cd 
echo ${a:4:2} # ef
echo ${a:4:6} # ef  就剩2位，要截取6位，只能返回2位
# 截取以后，a的值不变


x=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

k=${x:10:1} # k字符
_9=${x:61:1} # 9字符
echo "$k $_9"


# 随机数
echo $RANDOM # 0 - 几万  随机数 

#$(()) 计算
n=$(($RANDOM%62)) # 0-61的范围

key=${x:$n:1} # 随机截取一个字符

echo $key


# 替换字段串

# 只能替换1个，或者全部替换, 无法替换部分
a="hello hello hello world"
echo ${a/hello/nihao} # hello 替换成 nihao 默认只替换1次，只替换第一个
echo ${a//hello/nihao} # 2个 hello 替换成 nihao 替换最长，所有的都替换
echo ${a/hello hello/nihao} # 换前2个hello
echo ${a/hello hello world/nihao world} # 换后2个hello
echo ${a/hello hello world/} # 换成空，相当于删除


# 删除  只能掐头，去尾
echo "-------删除-----"

# 掐头
echo ${a#hello} # hello hello world
echo ${a#*o} # 一直删除到最后一个o   掐头 * 写在前头

# 去尾
echo ${a%hello}
echo ${a%o*} # 一直删除到最后一个o   掐头 * 写在后头













