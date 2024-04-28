#!/bin/bash

# 先执行 touch abc{01..10}.txt
for i in $(ls *.txt)
do
    n=${i%.*} # .txt 干掉  % 表示去尾  # 表示掐头
    mv $i $n.doc
done

# rm -r *.doc