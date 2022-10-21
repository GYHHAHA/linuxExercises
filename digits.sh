#!/bin/bash
sum=0
for i in {1000..2000}
do
  if [[ $i =~ ^[0,1]+$ ]]; then
    sum=$(($sum + $i))
  fi
done
echo "The sum of the numbers between 1000 and 2000 (inclusive) only having digits 1 or 0 is $sum"
