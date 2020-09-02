#!/bin/bash -x
flag=0;
read -p "Enter the Number:" num
for (( i=2;i<$num/2;i++ ))
do
	if [[ $num%$i -eq 0 ]]
	then
		flag=1;
		break;
	fi
done
if [ ! $flag -eq 1 ]
then
	echo $num" is a prime Number"
else
	echo $num" is Not prime Number"
fi
