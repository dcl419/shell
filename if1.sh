#!/bin/bash

# 管理员的uid是0
if [ 0 -eq $UID ];then
    echo "你是管理员"
fi
