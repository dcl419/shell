#!/bin/bash

# while [ 1 -eq $1 ]
# while : # : 永远成立的条件
n=10
while [ $n -ge 5 ] 
do
    echo "abc $n"
    sleep 0.2 # 休息0.2s
    let n--
done