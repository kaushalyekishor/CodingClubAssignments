#!/bin/bash -x
read -p "Enter temperature : " temperature

function convert_degC_to_degF()
{
   fahrenheit=$(( ($temperature * 9 / 5) +32 ))
   echo "Fahrenheit" $fahrenheit
}

function convert_degF_to_degC()
{
   Celsius=$(( ($temperature -32) * 5/9 ))
   echo "Celsius : " $Celsius
}

printf "\n1.Convert degC to degF. \n2.convert degF to degC.\n"
read -p "Enter your choice: " choice
case $choice in

1) echo "$( convert_degC_to_degF )"
   ;;
2) echo "$( convert_degF_to_degC )"
   ;;
   *) echo "Invalid choice."
   ;;
esac
