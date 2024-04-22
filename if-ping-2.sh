#!/bin/bash

for i in {1..3} 4 {6..8}
do
    ping -c 3 -i 0.2 -W 1 127.0.0.$i &> /dev/null

    if [ $? -eq 0 ];then
    echo "通了: 127.0.0.$i"
    else
    echo "不通: 127.0.0.$i"
    fi
done 
