#!/bin/bash
while  IFS= read -r line || [ -n "$line" ]
do
 echo -e "\e[33m City: $line"
done < name.sh