#!/bin/bash -x
arr=(5 3 2 7 3 8 1)
length=${#arr[@]}
smallest=1000
secondSmallest=1000
for (( i=0; i<length; i++ ))
do
        if [[ ${arr[$i]}<$smallest ]]
        then
               secondSmallest=$smallest
		smallest=${arr[$i]}
	fi

	if [[ ${arr[$i]}>$smallest && ${arr[$i]} < $secondSmallest ]]
   	then
		secondSmallest=${arr[$i]}
	fi
done
echo $smallest
echo $secondSmallest
