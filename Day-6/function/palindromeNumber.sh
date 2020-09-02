#!/bin/bash -x
read -p "Enter number:" number
temp=$number
rev=0
while [ $number -gt 0 ]
do
	rem=$(( $number % 10 ))
	rev=$(( rev * 10 + $rem ))
	number=$(( $number / 10 ))
done

function palindrome()
{
	if [ $temp -eq $rev ]
	then
		echo "number is palindrome"
	else
		echo "number is Not palindrome"
	fi
}
result="$(palindrome)"
