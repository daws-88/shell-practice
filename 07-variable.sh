#!/bin/bash

NUMBER1=500
NUMBER2=200
NAME=devops
SUM=$(($NUMBER1+$NUMBER2))
echo "SUM is: $SUM"
NAME=("linux" "aws" "docker")
echo "script name is: ${NAME[2]}"