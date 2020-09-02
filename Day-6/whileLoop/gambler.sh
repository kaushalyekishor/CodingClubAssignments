#!/bin/bash -x
read -p "Enter number of trails: " n
goal=10
start=1
bets=0
wins=0

for (( i=0; i<n; i++ ))
do
cash=$start
while [ $cash -gt 0 ] && [ $cash -le $goal ]
do
        random=$((RANDOM%2))
        (( bets++ ))
        if [ $random -eq 1 ]
        then
                #echo "win"
        (( cash++ ))
        else
                #echo "lose"
        (( cash-- ))
        fi
done
if [ $cash -le $goal ]
then
        (( wins++ ))
fi
done
echo "Number of win: "$wins
echo "Number of bets: "$bets
