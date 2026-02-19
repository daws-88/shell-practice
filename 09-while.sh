#!/bin/bash
# whie loop is used to read file
# | [ -n "$line" ]
R="\e[31m"
while  IFS= read -r line 
do
 echo -e "$R City: $line"
done < 02-read.sh