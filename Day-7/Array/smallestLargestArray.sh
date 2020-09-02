#!/bin/bash -x
for(( i=0; i<10; i++))
do
        random=$((RANDOM%899 + 100))  #Generate the 3 digit random Number
        arr[(($i))]=$random   #store in Array
done
        echo ${arr[@]}

#sortedArray=$((printf '%s\n' "${arr[@]}" | sort -n))

#echo "Array in sorted order :" echo ${arr[@]}

secondGreatest=$(printf '%s\n' "${arr[@]}" | sort -n | tail -2 | head -1)
echo $secondGreatest
secondSmallest=$(printf '%s\n' "${arr[@]}" | sort -n | head -2 | tail -1)
echo $secondSmallest
