#!/bin/bash

#### This run unit contition is fale
#start=1
#until [[ $start -ge 5 ]]
#do
#	echo "Number is : $start"
#	#((start++))
#	start=`expr $start + 1` # ((start++)) can be written as
#done


###### Check the file is exist or not
until [[ -e /home/zubair/ANLAFIA/bashpractice/zu1 ]]
do 
	echo -e "File is not exist"
	sleep 1
done
echo "File exit"
