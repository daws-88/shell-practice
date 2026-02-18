#!/bin/bash
R="\e[31m"
while  IFS= read -r line || [ -n "$line" ]
do
 echo -e "$R City: $line"
done < name.sh