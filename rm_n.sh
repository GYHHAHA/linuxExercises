#!/bin/bash
dir=$1
file_size=$2
if [ $# -ne 2 ]
then
    echo "usage: rm_n.sh <dir> n"
    exit
fi
for file in `ls $dir`
do
  if [ -f "$file" ];then
   echo $file
   size=$(wc -c < $file)
   if [ $size -gt $file_size ];then
     rm -rf $file
     echo "$file size : $size is removed."
   fi
  fi
done
