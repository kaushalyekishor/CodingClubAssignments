#!/bin/bash -x
read -p " Enter Number " num
i=2;
j=0;
sum=$(($i))
#echo $sum
while [ $num -ge $sum ]
do
	if [[ $rem -eq 0 ]]
	then
	   arr[((j++))]=$i
	   #echo $i
	   num=$(($num/$i))
	   rem=$(($num%$i))
	else
	  i=$(($i+1))
	  rem=$(($num%$i))
	fi
done
#echo ${arr[@]}
arr[((j++))]=$num
echo Prime Factors are: ${arr[@]}
