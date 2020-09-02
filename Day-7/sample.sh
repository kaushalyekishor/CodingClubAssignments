#!/bin/bash -x

for (( range=0; range<=10; range++ ))
do
	randomOfThreeDigitNumber=$((100+RANDOM%899))
	arrayRandomValue[$range]=$randomOfThreeDigitNumber
done

echo ${arrayRandomValue[@]}
arrayLength=${#arrayRandomValue[@]}

function secondSmallestWithOutSorting(){
	smallest=$((arrayRandomValue[0]))
	secondSmallest=$((arrayRandomValue[0]))
	arrayLength=${#arrayRandomValue[@]}

	for (( range1=0; range1<$arrayLength; range1++ ))
	do
		if (( $((arrayRandomValue[range1])) < $smallest ))
		then
			secondSmallest=$smallest
			smallest=$((arrayRandomValue[range1]))
		elif (( $((arrayRandomValue[range1])) < $secondSmallest ))
		then
			secondSmallest=$((arrayRandomValue[range1]))
		fi
	done
echo "2nd Smallest :" $secondSmallest
}

function secondMaximumWithOutSorting () {

	maximum=$((arrayRandomValue[0]))
	secondMaximum=$((arrayRandomValue[0]))

	for (( range2=0; range2<$arrayLength; range2++ ))
	do
		if (( $((arrayRandomValue[range2])) > $maximum ))
		then
			secondMaximum=$maximum
			maximum=$((arrayRandomValue[range2]))
		elif (( $((arrayRandomValue[range2])) > $secondMaximum ))
		then
			secondMaximum=$((arrayRandomValue[range2]))
		fi
	done
echo "2nd Second Maximum" $secondMaximum
}


function secondSmallestAndMaximumWithSorting (){
temporaryValue=0;
for (( index=0; index<$arrayLength; index++ ))
do
	for ((index1=index+1; index1<$arrayLength; index1++ ))
	do
		if (( $((arrayRandomValue[index])) > $((arrayRandomValue[index1])) ))
		then
			temporarayValue=$((arrayRandomValue[index]))
			arrayRandomValue[index]=$((arrayRandomValue[index1]))
			arrayRandomValue[index1]=$temporaryValue
		fi
	done
			echo "Sorting Array :"  ${arrayRandomValue[index]}
done
echo "2nd Smallest" ${arrayRandomValue[1]}
echo "2nd Maximum" ${arrayRandomValue[9]} 
}

echo $( secondSmallestWithOutSorting )
echo $( secondMaximumWithOutSorting )
echo $( secondSmallestAndMaximumWithSorting )
