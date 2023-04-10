#!/bin/bash
export base=`pwd`
export result=$base/runhip
count=0
#读文件，结果写进b.out
cat ./benchmark_list &>c.out
#把b.out内容写进数组arr
mapfile arr<c.out
echo "-----hipcc for each -----"
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
    if [ ! -e  "$result/$new_name" ]
    then
          mkdir $result/$new_name
                fi
    hipcc -O3  $line &> $result/$new_name/${new_name}.out -o $result/$new_name/${new_name}
    echo "------compile done------${new_name}"
    count=$[ $count+1]
done < ./benchmark_dir
