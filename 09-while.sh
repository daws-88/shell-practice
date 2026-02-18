#!/bin/bash
while  IFS= read -r line filepath 
do
 echo "City: $line"
done < name.sh
#|| [ -n "$line" ]