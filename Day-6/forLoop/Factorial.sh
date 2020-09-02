##!/bin/bash -x
read -p "Enter the Number: " number
fact=1;
for(( i=1; i<=$number; i++ ))
do
     fact=$(($fact*$i))
done
echo $fact

