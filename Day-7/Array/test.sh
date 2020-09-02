#!/bin/bash -x
counter=0;
ret=0;
i=1;
echo "Please enter a number"
read num
        ret=$(factor $num | grep $num | cut -d ":" -f 2 | cut -d " " -f $i)
	for (( i=1; i<3; i++))
	do
	array[ $counter ]=$ret[i]
        ((counter++))
        #((i++))
done

echo "Prime factors are"
echo ${array[@]}
