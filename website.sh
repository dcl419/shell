#!/bin/bash
# 搭建网站

yum -y install httpd
systemctl restart httpd
echo "web-test~~" > /var/www/html/index.html

# curl 127.0.0.1