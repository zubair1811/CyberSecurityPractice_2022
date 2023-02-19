#!/bin/bash

read -p "Enter any package to check it is installed or not :" service_name
command=$(which $service_name)i
status=$(echo $?)
if [[ $status -eq 0 ]]
then 
	echo "$service_name is installed"
else
	echo "$service_name is not installed"
fi

