#!/bin/bash
export base=`pwd`
export result=$base/runhip

while read line
do
echo "--------run $line --------"
HIP_VISIBLE_DEVICES=0   ./$line
echo "--------run done --------"
done < ./benchmark_tile
