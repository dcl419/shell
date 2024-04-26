#!/bin/bash

# 下载安装包
wget http://nginx.org/download/nginx-1.17.6.tar.gz

# 安装依赖
yum -y install gcc make pcre-devel openssl-devel

# 源码释放
tar -xf nginx-1.17.6.tar.gz 

# 源码编译
cd nginx-1.17.6

# 三个步骤
./configure
make
make install

