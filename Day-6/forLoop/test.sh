#!/bin/bash -x
read -p "Enter number from: " first
read -p "Enter number to: " last
echo "Prime numbers between $first and $last are: "
temp=0
for (( i=first; i<last; i++ ))
do
	temp=$(($num%$i))
	if [[ $temp -eq 0 ]]
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

