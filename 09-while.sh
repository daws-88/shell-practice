#!/bin/bash
while  IFS= read -r line
do
 echo "City: $line"
done < name.sh