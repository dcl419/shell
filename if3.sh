#!/bin/bash

read -p "假期打算花几天学习？" x

if [ $x -ge 8 ];then
    echo "别闹~"
elif [ $x -eq 7 ];then
    echo "好孩子"
elif [ $x -ge 4 ] && [ $x -le 6 ];then
    echo "也不错" 
elif [ $x -ge 1 ] && [ $x -le 3 ];then
    echo "加油"
else                 
    echo "不要脸"
fi    