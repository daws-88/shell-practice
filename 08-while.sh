#!/bin/bash
# want to print numbers from 1 to 9
a=1 #intalizing variable
while [ $a -le 9 ]
do 
    echo "$a"
    sleep 2
    a=$(($a+1))
done 
# while 