#!/bin/bash -x
for(( i=0; i<10; i++))
do
        random=$((RANDOM%899 + 100))
        arr[(($i))]=$random
done
        echo ${arr[@]}

#arr=(1 2 3 4 5 6 7 8 9)
length=${#arr[@]}
max1=0
max2=0
for (( i=0; i<length; i++ ))
do
        if [ arr[$i]>$max1 ]
        then
                max2=$max1;
                max1=${arr[$i]}
        elif [ arr[$i]>$max2 ]
        then
                max2=${arr[$i]}
        fi
done

min1=9999
min2=9999
for (( i=0; i<length; i++ ))
do
        if [[ "${arr[$i]}"<$min1 ]]
        then
                min2=$min1
                min1=${arr[$i]}
        elif [[ "${arr[$i]}"<$min2 && "${arr[$i]}">$min1 ]]
        then
                min2="${arr[$i]}"
        fi
done
echo $max2
echo $min2
