#! /bin/bash
i=1541606400000
j=1
d=3600000
while [[ $j -lt 25 ]]
do
        end=$[i+d]
        cut -f1 /data/mycrawlerlogs/news_info.log |awk -v start=$i -v e=$end '{if($0>=start&&$0<=e) print $0}'|wc -l
        j=$[j + 1]
        i=$[i + d]
done

# 统计每一个小时的个数, 其中文件的第一列为时间戳