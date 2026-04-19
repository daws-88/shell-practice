#!/bin/bash
# whie loop is used to read file
R="\e[31m"
while IFS= read -r filepath || [ -n "$filepath" ]
do
  echo -e " $R city: $filepatg $N"
done < name.sh

