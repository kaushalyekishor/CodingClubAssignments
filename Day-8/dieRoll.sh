#!/bin/bash -x

#declaring a dictionary
declare -A dice
random=0
while [[ ${dice[$random]} -ne 10 ]]
do
	random=$((1+RANDOM%6))
	dice[$random]=$((${dice[$random]}+1))
done
#variables
maximumValue=${dice[1]}
minimumValue=${dice[1]}
maxIndex=1
minIndex=1

for (( index=2; index<=6; index++ ))
do
	if [[ $maximumValue -lt ${dice[$index]} ]]
	then
		maximumValue=${dice[$index]}
		maxIndex=$index
	fi
	if [[ $minimumValue -gt ${dice[$index]} ]]
	then
		minimumValue=${dice[$index]}
		minIndex=$index
	fi
done

echo ${dice[@]}
echo "Maximum count of dice $maxIndex is :" $maximumValue
echo "Minimum count of dice $minIndex is :" $minimumValue
