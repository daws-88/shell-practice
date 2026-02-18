#!/bin/bash
while  IFS= read -r line || [ -n "$line"]
do
 echo "City: $line"
done < name.sh
#|| [ -n "$line" ]