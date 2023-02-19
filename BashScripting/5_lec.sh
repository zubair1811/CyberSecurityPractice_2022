#!/bin/bash

read -p "Enter any Number: " num
if [[ $num -ge 10 ]]
then
	echo "Typed number $num is greater than 10"
else
	echo "else less than"
fi
