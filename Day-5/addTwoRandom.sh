#1/bin/bash -x
random1=$((RANDOM%10))
echo "first No: "$random1
random2=$((RANDOM%10))
echo "second No: "$random2
sum=$(($random1 + $random2))
echo "sum: "$sum
