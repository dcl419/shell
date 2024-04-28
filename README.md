# shell
shell study demo

# 解释器
- /bin/bash

# 类型
- 非交互式  ls cd
- 交互式 passwd

# 1. 声明解释器
#!/bin/bash

# 2. 注释
#可以描述脚本功能、变量等信息

# 3. 执行指令

# 执行方式
- chmod u+x test01.sh  增加可执行权限
- 使用解释器来执行 bash  test01.sh
- source 或者 . 来执行
- source test01.sh . test01.sh

# 重定向
 > 重定向标准输出
 
 # 条件测试
 - 可以赋予脚本只能判断的效果
 - 语法格式
 - 1. test 表达式
 - 2. [ 表达式 ] [ a != b ]
 ## 测试内容
 - == 两边是否相等 对字符串进行测试
 - != 两边是不是不相等
 - -z 判断变量是否为空
 - ! -z 判断变量是否非空 
 - [ $a == "$c" ]
 - [-z $a] 请系统帮我判断下，变量a是不是空的
 - [! -z $a] 请系统帮我判断下，变量a是不是非空的

## 使用逻辑组合
- 条件 && 指令  : 条件成功才执行指令
- [ a == a ] && echo ok
- 条件 || 指令  : 条件失败才执行指令 

## 数字条件测试
- -eq 是否相等
- -ne 不相等
- -gt 小于
- -ge 大于等于
- -lt 小于
- -le 小于等于

## 文件条件测试
- -e 文件是否存在，不关心文件类型（文件，目录）
- -f 判断文件是否存在，必须是文件，不能是目录
- -d 判断文件是否存在，必须是目录，不能是文件
- -r 判断用户是否有读权限，对管理员无效，通常都是对普通用户进行测试
- -w 判断用户是否有写权限，对管理员无效，通常都是对普通用户进行测试
- -x 判断用户是否有x权限（执行，进入目录）
  
## if分支
- 单分支 
- if 条件测试;then
- 执行指令
- fi 结尾  

- 双分支
- if 条件测试;then
- 执行指令A
- else
- 执行指令b
- fi

- 多分支
- if 条件测试;then
- 执行指令A
- elif 条件测试;then
- 执行指令B
- else
- 执行指令
- fi

# 循环
- 可以反复执行某任务
- for 循环，可以定义循环次数
- for  变量名  in 值1 值2 值3 ...
- do
- 任务
- done 

- for ((i=0;i<10;i++))
- do
- 任务
- done

- while 循环
- while 条件测试
- do
- 指令
- done
  
# 控制循环
- exit 可以终止循环 脚本也会终止
- break 可以终止循环 不终止整个脚本 会终止循环后的任务
- continue 可以终止当前循环，终止之后会继续下一次循环
  

# case 分支
- 功能类似if，编写时语句比if精简

- case 调用的变量名 in
- 模式1)
- 指令a
- 指令b;;
- 模式2)
- 指令;;
- *)
- 指令
- esac

# nginx 安装
- wget http://nginx.org/download/nginx-1.17.6.tar.gz
- root /opt
- 正常使用
- gcc make
- 检查yum是否正常
- yum clean all
- yum repolist
- 检查是否执行成功
- ls /usr/local/nginx/
- conf html logs sbin 成功
- nginx 不支持 systemctrl start nginx 启动
- /usr/local/nginx/sbin/nginx 存放目录
- 关闭httpd  systemctl stop httpd
- 关闭防火墙  systemctl stop firewalld
- 通过ip访问，就可以看到nginx的首页
- 关闭 nginx /usr/local/nginx/sbin/nginx -s stop
- netstat -ntulp | grep nginx
- n 以数字显示端口号
- t 显示tcp类型数据
- u 显示udp类型数据
- l 监听的端口信息
- p 显示服务的名称  
- echo -e "\033[31mABCD\033[0m"  改变输出的颜色
- \033[ 改颜色
- 31m 红色
- 32m 绿色
- \033[0m 改完要还原 0m 默认颜色

# 函数
- 可以利用一个名称存储公共的语句块，实现精简脚本方便后期调用的目的
- 函数名（）{ 命令...}

# 字符串
- 字符串的截取（子串截取）
- a=abcdef  
- ${变量名:截取位置:截取长度}

- 替换
- ${变量名/旧/新}

- 删除
- 要么删除头，要么删除尾，不能删除中间
- ${变量名#要删除的内容} 掐头
- ${变量名%要删除的内容} 去尾

# 创建10个文件
- touch abc{01..10}.txt
- rm -r abc{01..10}.txt
- mv abc.01.txt abc01.doc
- 
  