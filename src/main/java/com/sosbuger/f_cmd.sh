#!/bin/bash
# 文章来源: https://www.cnblogs.com/dongying/p/6398570.html

#-------------------------------------------------------------------
# 1, 命令行参数处理
param1=$1
param2=$2
echo $param1
echo $param2
param10=${10}
echo $param10


# 2, 读取所有参数总数$#  注意: ${!i} 按说应该为: ${$i}，由于${}内不能再写$符号，bash shell在这个地方是用了!符号
for (( i=0;i<=$#;i++))
do
    echo ${!i}
done


# $* 会将命令行上提供的所有参数当作一个单词保存, 我们得到的值也就相当于是个字符串整体。
# $@ 会将命令行上提供的所有参数当作同一字符串中的多个独立的单词。
var1="$*"
echo var1:$var1
for param in $var1
do
    echo $param
done

var2="$@"
echo var2:$var2
for param in $var2
do
    echo $param
done

# 3, 获得用户输入
# demo1 单个输入
echo -n "yes or no(y/n)"
read choice
echo "your choice is $choice"

# demo2  多个输入
read -p "what is your name" first last
echo first:$first
echo last:$last


# demo3 超时设置
if read -t 5 -p "please enter your name: " name
then
    echo "your name is "$name
else
    echo "sorry time out"
fi


