#!/bin/bash -x
headCounter=0
tailCoumter=0
while [ 1 -eq 1 ]
do
        randomGenerator=$((RANDOM%2))
        if [ $randomGenerator -eq 0 ]
        then
                #echo "Heads"
                ((headCounter++))
                if [[ $headCounter -eq 11 ]]
                then
                        echo "Head came" $headCounter
                        exit
                fi
        else
                #echo "Tails"
                ((tailCounter++))
                if [[ $tailCounter -eq 11 ]]
                then
                        echo "Tail came" $tailCounter
                        exit
                fi
        fi
done
