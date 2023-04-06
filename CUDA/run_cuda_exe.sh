#!/bin/bash

while read line
do
  echo "--------run $line --------"
  ./$line
  echo "--------run done --------"
done < ./cuda_exe.list
