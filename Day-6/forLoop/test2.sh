#!/bin/bash -x
echo "Enter the number"
read first
echo "Enter the second number"
read second


for (( i=$fist+1; i <= $second-1; i++ ))
do
        p=0
        for (( j=2; j <= $i-1; j++ ))
        do
                result=$(($i%$j))
                if [ $result == 0 ]
                then
                        p=1
                        break
                fi
        done
        if [ $p == 0 ]
        then
        echo $i
        fi
done
