#!/bin/bash
if [ 0 -eq $UID ];then
    echo "你是管理员"
else
    echo "你不是管理员"
fi