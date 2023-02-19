#!/bin/bash

#if [[ -x 10_lec1.sh ]]
for each in $(ls)
do
	if [[ -x $each ]]
	then
		echo "The file $each have executio permision"
	else
		echo "$each : Have no execution permision"
	fi
done
