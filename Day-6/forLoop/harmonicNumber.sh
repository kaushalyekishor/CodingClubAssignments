#!/bin/bash -x
read -p "Enter value of n: " n
harmonicNumber=0
for (( i=1; i<=n; i++ ))
do
   harmonicNumber=$(( $harmonicNumber + (1000/$i)))
   #echo $harmonicNumber
done
printf %.3f "$(($harmonicNumber))e-3"
