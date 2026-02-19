#!/bin/bash
# whie loop is used to read file

R="\e[31m"
while  IFS= read -r line || [ -n "$line" ]
do
 echo -e "$R City: $line"
done < name.sh