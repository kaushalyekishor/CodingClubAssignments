#!/bin/bash -x
getLast=0
getFirst=0
j=0
for (( i=1; i<=100; i++ ))
do
	getLast=$(( $i % 10 ))
	getFirst=$(( $i / 10 ))
	if [ $getLast -eq $getFirst ]
	then
	arr[((j++))]=$i
	fi
done
echo ${arr[@]}
