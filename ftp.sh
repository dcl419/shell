#!/bin/bash

# /dev/null 黑洞，扔什么信息都会消失，不想要信息的，都可以扔进去
yum -y install vsftpd &> /dev/null # ftp 服务
systemctl restart vsftpd # 启动
systemctl enable vsftpd &> /dev/null # 开机自启

# systemctl status vsftpd
# systemctl is-enabled vsftpd 是否设置了开机自启

# 使用重定向优化不需要展示的信息
# > 标准输出
# 2> 重定向错误输出
# &> 重定向所有输出

# >> 追加
# 2>> 重定向错误输出
# &>> 重定向所有输出




