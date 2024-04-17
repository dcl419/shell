#!/bin/bash

# x=httpd
x=vsftpd
yum -y install $x &> /dev/null
systemctl restart $x
systemctl enable $x &> /dev/null


# 自定义变量  变量名=变量的值   等号两边不能有空格
# unset 取消变量
# a= 取消
# a=10 ${a}RMB  使用a

# 环境变量，由系统提前定义好的，使用的时候，直接调用
# echo $USER 当前用户名称
# echo $SHELL 当前用户的解释器
# echo $HOME 当前用户的家目录
# echo $HOSTNAME 主机名
# echo $PWD 当前目录
# echo $UID 用户uid号  普通用户的uid 1000以后
# echo $PATH 存储命令的路径
# which ls
# PS1 一级提示符
# PS2 二级提示符  >  表示上一行的命令没完，需要继续敲
# 管理员 #   普通人员 $

# 位置变量与预定义变量
# $1 $2 $3 $* 执行脚本时后面跟的第1/2/3个/所有的位置参数

# env 看环境变量
# set 看所有变量 
# abcd=6666
# set | grep abcd

#  变量的扩展知识
# 1. 引号 '' ""   作用: 界定范围   touch ”a b“    touch ‘x y’ 
#    ‘’ 有屏蔽特殊符号的功能 echo "$a" 可以  echo '$a' $符号的功能就屏蔽了 不想用特殊符号生效的时候，就用‘’

# 2. 反撇号 ``  获取命令的执行结果  a=`date`  $() 相同的效果  a=$(date)








