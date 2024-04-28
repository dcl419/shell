#!/bin/bash

# 先定义，后调用
a(){
    # 会多显示个-e 不知道为啥
    # echo -e "\033[31mABCD\033[0m"

    # 去掉-e 也能正常展示
    echo "\033[$1m$2\033[0m"
}

a 31 ABCD
a 32 XYZ