# 学习来源: https://www.cnblogs.com/dongying/tag/shell/
#!/bin/bash
# 使用环境变量
echo $PATH
# 自定义变量
hello="hello world"
echo $hello
echo "--------------------------------"
path=$(pwd)
files=`ls -alh`
echo current path:$path
echo files:$files