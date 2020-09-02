#!/bin/bash -x
read -p "Enter value: " a
read -p "Enter value: " b
read -p "Enter value: " c

op1=${{ $a + $b * $c}}
op2=${{ $a % $b + $c}}
op3=${{ $c + $a / $b}}
op4=${{ $a * $b + $c}}

for((i=1;i<=4;i++))
do
Array[((i))]=$(("op"$i))
done

echo ${Array[@]}
max=0
for i in "$Array[@]}"
do
if [[ $1 -ge max ]]
then
        max=$i
fi
done
echo "Max val is "max

min=10000
for i in "${Array[@]}"
do
if [[ $i -le min ]]
then
        min=$i
fi
done
echo "min val is "$min


