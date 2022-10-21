#!/bin/bash
rm -r five
mkdir five
cd five

for i in {1..5}
do
 mkdir "dir$i"
done

for sub in ./*
do
cd $sub
for j in {1..4}
 do
   for k in $(seq 1 $j)
   do
     echo "$j" >> "file$j"
   done
 done
cd ..
done
