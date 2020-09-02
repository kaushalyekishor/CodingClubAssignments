#!/bin/bash -x
arr=(1 34 2 9 60 5 70)
length=${#arr[@]}
max1=0
max2=0
for (( i=0; i<length; i++ ))
do
	if [ arr[$i]>$max1 ]
	then
		max2=$max1;
		max1=${arr[$i]}
	elif [ arr[$i]>$max2 ]
	then
		max2=${arr[$i]}
	fi
done

echo $max2;
