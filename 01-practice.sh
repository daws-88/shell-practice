#!/bin/bash
# Script to print a pyramid of 5 stars (rows)

rows=5
for ((i=1; i<=rows; i++))
do
  # Inner loop to print leading spaces for centering
  for ((j=i; j<rows; j++))
  do
    echo -n " "
  done

  # Inner loop to print stars (using 2*i-1 logic for odd growth)
  for ((k=1; k<=(2*i-1); k++))
  do
    echo -n "*"
  done

  # Move to the next line after each row
  echo ""
done
