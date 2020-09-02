#!/bin/bash -x
counter=1

declare -A birthdayCount

while [[ $counter -le 50 ]]
do
	randomNumber=$(( RANDOM%12 + 1 ))
	birthdayCount[$randomNumber]=$((${birthdayCount[$randomNumber]}+1))
	((counter++))
done

for (( i=1;i<=12; i++ ))
do
	echo "Month $i=${birthdayCount[$i]} is most people's birthday fall"
done
