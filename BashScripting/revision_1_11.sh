#!/bin/bash

###### Change te dir using Bash ###### 
#echo "Zubair"
#echo "Your Current dir is: $(pwd)"
#read -p "Enter 'zubair' to go in Zubair home: " dir_name
#read -p "Enter where you want  to go in zubair home: " dir_name
#cd /home/$dir_name
#cd /home/zubair/$dir_name
#echo "Now you are in $(pwd)"



####### Chcek the installed service using bash with $echo?
#read -p "please enter service want to check: " srv_name
#command=$(which $srv_name)
#status=$(echo $?)
#echo "$command"
#echo "$status"
#if [[ $status -eq 0 ]]
#then
#	echo "$srv_name is installed in the PC"
#	echo " Installed version is : $($srv_name -v)"
#else
#	echo "$srv_name is not installed"
#fi


############### Check the service using ps -ef | grep <service> | wc -l command
#read -p "Please enter service name want to check: " srv_name
#command=$(ps -ef | grep $srv_name | wc -l)
#if [[ $command -ne 1 ]]
#then
#	echo " $srv_name is installed with version $($srv_name -v)"
#else
#	echo "$srv_name is not installed"
#fi


###### Read the file using bash
#file="testlect11.txt"
#cat $file | while  read each_line
#do
#	echo "$each_line"
#done

####### Use IFP: internal feild sepertor
file="testlect11.txt"
cat $file | while IFS=','  read var1 var2
do
        echo "$var1"
	echo "$var2"
done













