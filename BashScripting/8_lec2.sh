#!/bin/bash

#Simple Way to check status
#read -p "Enter the service name  which you want to check" service_name
#read -p " Enter the status" status
#sudo systemctl $status $service_name

# using postional parapters
#service_name=$1
#status=$2
#sudo systemctl $status $service_name

# In the above command user can add more than two postional arguments

if [[ $# -ne 2 ]]
then
	echo "Hy Admin, Please run the script as per instructions"
	echo "Example: $0 <service_name> <ActionBeExecuted> "
	echo "Example: docker status"
	echo "Action valid : Status, Stop, start, restart"
else
	service_name=$1
	status=$2
	sudo systemctl $status $service_name
fi
