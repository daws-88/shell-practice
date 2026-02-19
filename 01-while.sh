#!/bin/bash
t=5
echo "Start Counting"
while [ $t -gt 0 ]
do 
echo "Time left: $t"
slepp 1
t=$(($t-1))
echo "Times Up"
dome