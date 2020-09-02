#!/bin/bash -x
power=1
powerOfTwo=1
read -p "Enter the number" number
while [[ $power -le $number ]]
do
	if [ $powerOfTwo -lt 256 ]
	then
	    powerOfTwo=$((2*$powerOfTwo))
	    echo "2 to the power of "$power" is:"$powerOfTwo;
	    ((power++))
	fi
done
