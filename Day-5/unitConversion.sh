#!/bin/bash -x
read -p "Enter the choice:" choice

case $choice in 
	1)echo "feet to inch"
	read -p "Enter No. in feet:" feet
	printf %.f "$(($feet*12))"
	;;
	2)echo "feet in meter"
	read -p "Enter No. in feet:" feet
	printf %.f "$((1000000000 * ($feet*3048)/10000))e-9"
	;;
	3)echo "inches to feet"
	read
