#!/bin/bash

# 创建用户
useradd $1 # 用户名
echo $2 | passwd --stdin $1 # 密码