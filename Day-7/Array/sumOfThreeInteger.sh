#!/bin/bash -x
add=0;
arr=(0 -1 2 -3 1)
arrlen=${#arr[@]}
for (( i=0; i<$arrlen-2; i++ ))
do
   for (( j=$i+1; j<$arrlen-1; j++ ))
   do
	for (( k=$j+1; k<$arrlen; k++ ))
	do
	add=$(( ${arr[i]}+${arr[j]}+${arr[k]} ))
	    if [[ $add -eq 0 ]]
	    then
		echo ${arr[i]}" "${arr[j]}" "${arr[k]}"=0"
	        found=1
	    else
		found=0
	    fi
	done
    done
done
if [[ $found -eq 0 ]]
then
	echo "NOt exist"
fi
