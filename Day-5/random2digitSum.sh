#1/bin/bash -x
sum=0
count=0
for ((i=1;i<=5;i++))
do
((count++))
random=0;
random=${RANDOM:0:2}
echo $i" random No:"$random
sum=$(($sum + $random))
done
echo "Sum is:"$sum
avg=$(($sum/$count))
echo $avg
