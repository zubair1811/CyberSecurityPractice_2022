#!/bin/bash

echo "######## Set -x debugging ON"
set -x
read -p "Please Enter your name :" name
echo your name is $name
set +x
echo "######## Set +x debugging OFF"

echo "current dir is $(pwd)"
cd /home/zubair
echo "change dir $(pwd)"
