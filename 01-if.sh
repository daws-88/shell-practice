#!/bin/bash
echo "Enter Your Number"
read NUMBER
if [ $((NUMBER % 2)) -eq 0 ]; then
    echo "Given Number $NUMBER is even"
else
    echo "Given Number $NUMBER is odd"
fi
 
