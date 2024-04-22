#!/bin/bash
# 批量创建用户

for i in $(cat ./name.txt)
do 
useradd $i
done
