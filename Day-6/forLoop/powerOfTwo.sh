#!/bin/bash -x
read -p "enter power number" n
powerOfTwo=1;
for ((i=0; i<=$n; i++))
do
	echo "2 to the power of "$i" is:"$powerOfTwo;
	powerOfTwo=$((2*$powerOfTwo))
done


