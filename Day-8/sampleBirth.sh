#constants
MONTHS=12
LIMIT=50

#variables
count=1

declare -A birthdayCount

while [[ $count -le $LIMIT ]]
do
	randomNumber=$((1+RANDOM%$MONTHS))
	birthdayCount[$randomNumber]=$((${birthdayCount[$randomNumber]}+1))
	((count++))

done

for (( index=1; index<=$MONTHS; index++ ))
do
	echo "Month $index=${birthdayCount[$index]} people's birthday falls in this month"
done
