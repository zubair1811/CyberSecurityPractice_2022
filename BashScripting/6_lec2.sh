#!/bin/bash

read -p "Enter package name to check installed or not" service_name
command=$(ps -ef | grep $service_name | wc -l)
if [[ $command -ne 1 ]]
then
	echo " The $service_name is installed"
else
	echo "$service_name is not installed"
fi

