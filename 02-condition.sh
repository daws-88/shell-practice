#!/bin/bash

read NUMBER
if [ $($NUMBER % 2 -eq 0) ]; then
    echo "number is  $NUMBER is even"
else
    echo "number is $NUMBER is odd"
fi
    