#!/bin/bash
echo "please enter number"

read NUMBER
if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "given number $NUMBER is even"
else
    echo "please number $NUMBER is odd"
fi