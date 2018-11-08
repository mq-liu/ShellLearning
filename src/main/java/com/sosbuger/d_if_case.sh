#! /bain/bash
# 文章引用: https://www.cnblogs.com/dongying/p/6376131.html


# -------------------------------------------------------------
# if-then语句 判断推荐使用[[  ]], 左右都要加空格
:<<!
语法:
 if  condition
 then
     command
 elif
     command
 then
      command
 fi
!
num1=100
num2=200
if [[ num1 > num2 ]]
then
    echo num1大于num2
else
    echo num1小于num2
fi




# ---------------------------------------------------------------
# case语句
:<<!
 case variable in
 pattern1)
     command;;
 pattern2)
      command;;
 pattern3)
      command;;
 ...
 esac
!


num=3
case $num in
1)
    echo "num is 1";;
2)
    echo "num is 2";;
3)
    echo "num is 3";;
4)
    echo "num is 3";;
*)
    echo "num is others";;
esac