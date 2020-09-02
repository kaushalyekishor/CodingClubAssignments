#!/bin/bash -x
read -p "Enter the number" number
temp=$number
function checkPrimeWithPalindrom()
{
	local number=$1
	for((i=2; i<=$number/2; i++))
	do
	if [ $(($number%$i)) -eq 0 ]
	then
	echo "$number is not a prime number."
	exit
	fi
	done
	echo "$number is prime number"
	temp=$number rev=0
	while [ $number -gt 0 ]
	do
	rem=$(( $number % 10 ))
	rev=$(( $rev * 10 + $rem ))
	number=$(( $number / 10 ))
	done

	if [ $temp -eq $rev ]
	then
	echo "Number is palindrome"
	else
	echo "Number is not palindrome"
	fi
}
result="$( checkPrimeWithPalindrom $number )"
echo $result
