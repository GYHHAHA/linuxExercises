#!/bin/bash
taxes=$(cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ',' -f7)
sum=0
counter=0
for i in $taxes
do
  sum=$(($sum+$i))
  counter=$(($counter+1))
done
echo "Sum: $sum";
echo "Average: $(echo "$sum / $counter" | bc -l)";
