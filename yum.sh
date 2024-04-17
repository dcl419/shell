#!/bin/bash

# 搭建yum软件仓库

mkdir /xyz
mount /dev/cdrom /xyz
rm -rf /etc/yum.repos.d/*.repo
echo "[xyz]
name=xxx
baseurl=file:///xyz
gpgcheck=0
enabled=1 " > /etc/yum.repos.d/xyz.repo