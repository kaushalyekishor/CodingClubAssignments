#!/bin/bash -x
startPoint=1;
endPoint=100;
echo "Think number between" $startPoint "to" $endPoint
findMid () {
        low=$1;
        high=$2;

        mid=$(( $(($low+$high))/2 ));
        echo $mid;
}

takeUserInput () {
        mid=$1

        printf "\n1.Is your number $mid ? \n2.Is your number less than $mid ? \n3.Is your number is greater than $mid ?\n";
        read -p "Enter your choice: " choice;

        case $choice in
                        1)
                                echo "Magic number found. "$mid;
                                exit
                                ;;
                        2)
                                endPoint=$(( $mid-1 ));
                                ;;
                        3)
                                startPoint=$(( $mid+1 ));
                                ;;
                        *)
                                echo "Invalid choice";
        esac;
}

thinkNumber () {
        while [ $startPoint -ne $endPoint ]
        do
                midNumber=$(findMid $startPoint $endPoint);
                takeUserInput $midNumber;

        done;

        if [ $startPoint -eq $endPoint ]
        then
                echo "Magic number found.  "$startPoint;
        fi;
}
thinkNumber
