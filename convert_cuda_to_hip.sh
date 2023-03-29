#!/bin/bash
export base=`pwd`
export result=$base/hip
count=0
#读文件，结果写进b.out
cat ./benchmark_list &>b.out
#把b.out内容写进数组arr
mapfile arr<b.out
echo "-----hipify for each -----"
while read line
do
      if [ ! -e "$result" ]
      then
      mkdir $result
      fi
      #去掉前缀
      name=${arr[$count]##*/}
      #去掉后缀
      new_name=${name%.*}
      if [ ! -e "$result/$new_name" ]
      then
      mkdir $result/$new_name
      fi
      hipify-perl $line > $result/$new_name/${new_name}.cpp
      count=$[ $count+1]
done < ./benchmark_list    
