#!/bin/bash
# 文章来源: https://www.cnblogs.com/dongying/p/6376166.html

# --------------------------------------------------------
# for-in语句
:<<!
语法:
 for var in list
 do
        commadn
 done
!

# demo1
for str in a b c d e f
do
    echo $str
done

# demo2
files=$(ls)
for file in $files
do
    echo $file
done

# demo3  使用IFS来,默认为\t和空格
oldIFS=$IFS
IFS='#'
str='a#b#c#d#e'
for char in $str
do
   echo $char
done
IFS=$oldIFS

# C语言风格的for循环
for ((  i=0;i<=10;i++))
do
    echo for$i
done

# ------------------------------------------------------------
# while 循环. test参照if

:<<!
 while test condition
 do
     commadn
 done
!

# demo1
i=0
end=10
while [[ $i -lt $end ]]
do
  i=$[i+1]
  echo w$i
done

# demo2 c语言的风格
i=0
while (( i <= $end ))
do
  i=$[i+1]
  echo w$i
done

#----------------------------------------------------------------
# until循环语句

u=15
until (( $u<10 ))
do
   echo u$u
   u=$[u-1]
done

# ---------------------------------------------------------------
# break
i=0
while (( $i<10 ))
do
    for (( j=0;$j <10;j++ ))
    do
       echo $i*$j=$[i*j]
       if [[ $j -eq 4 ]]
       then
        break
       fi
    done
    i=$[i+1]
    if [[ $i -eq 2 ]]
    then
        continue
    fi
done




