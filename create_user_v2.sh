#!/bin/bash

# 创建用户
# -p 表示提示信息
read -p "请输入用户名:" u
useradd $u # 用户名
stty -echo # 屏蔽回显
read -p "请输入密码:" n
stty echo # 恢复回显
echo $n | passwd --stdin $u # 密码



# stty -echo 屏蔽回显
# stty echo 恢复回显