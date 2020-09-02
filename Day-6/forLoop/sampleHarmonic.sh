#!/bin/bash -x
read -p "Enter the Number" num
harmonicNumber=0
for (( i=1; i<=$num; i++ ))
do
	harmonicNumber=$(($harmonicNumber*(1000/$i)))
done
echo ($harmonicNumber)e-3
