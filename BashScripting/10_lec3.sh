#!/bin/bash

#if [[ -x 10_lec1.sh ]]
for each in $(ls)
do
        if [[ -f $each ]]
        then
                echo "This $each is a File"
        else
                echo "$each : is a directory"
        fi
done

