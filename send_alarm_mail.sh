#!/bin/bash
# 编写脚本，每2分钟检查服务器的用户数量，如果发生变化（增加了用户），则发邮件通知管理员

# 发邮件  mail -s test root  
# . 回车  邮件结束
# mail 收邮件
# 1 回车 查看邮件内容
# q 回车  退出
# echo "123abc" | mail -s test root  非交互式邮件

# 用户数量
# cat /etc/passwd | wc -l

# systemctl status postfix 支持发邮件
# yum -y install mailx psotfix 安装发邮件功能

# 计划任务
# crontab -e  
# */2 * * * * /opt/send_alarm_mail.sh  分时日月周
# crontab -e

# chmod +x send_alarm_mail 增加执行权限
x=$(cat /etc/passwd | wc -l)
[ $x -gt 126 ] && echo "警告！服务器用户数量增加！" | mail -s warn dcl



 
