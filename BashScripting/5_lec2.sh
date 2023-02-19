#!/bin/bash

echo -n "Enter value of a :"
read a
echo -n "Enter value of b :"
read b
echo -n "Enter value of c :"
read c

if [[ $a -gt $b ]] && [[ $a -gt $c ]]
then
	echo " Number a: $a is greater"
elif [[ $b -gt $a ]] && [[ $b -gt $c ]]
then
	echo " Number a: $b is greater"
elif [[ $c -gt $a ]] && [[ $c -gt $b ]]
then
	echo " Number c: $c is greater"
else [[ $a == $b ]] && [[ $a == $c ]] && [[ $b == $c ]]
	echo "All are equal to $a"
fi

