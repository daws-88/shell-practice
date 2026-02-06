#!/bin/bash
NUMBER1=$500
NUMBER2=$300
NAME=("linux" "docker" "Terraform")
SUM=$(($NUMBER1+$NUMBER2))
echo "SUM is: $SUM"
echo "ALL names: ${NAME[@]}"
echo "First name is: ${NAME[0]}"