#!/bin/bash -x
start=1;
end=100;
#midNumber=0;
#userInput=0;

thinkNumber () {
	while [ $start -ne $end ]
	do
	  midNumber=$(findMid $start $end);
	  userInput $midNumber;
	done;

	if [ $start -eq $end ]
	then
	  echo "Magic Number found: "$start;
	fi;
}
thinkNumber

findMid () {
	low=$1;
	high=$2;

	mid=$(( $(($low+$high))/2 ));
	echo $mid;

}

userInput () {
	mid=$1

	printf "\n1.is your Number $mid ? \n2. is your number less than $mid ? \n3.is your number is greater than $mid?\n";
	read -p "enter your choice: " choice;

	case $choice in
	     1)
		echo "Magic Number found: "$mid;
		exit
		;;
	     2)
		end=$(( $mid-1 ));
		;;
	     3)
		start=$(( $mid+1 ));
		;;
	     4)
		echo "invalid choice";
	esac;
}
