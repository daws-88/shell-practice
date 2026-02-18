#!/bin/bash
b=1
while [ $b -le 20 ]
do
    echo "$b"
    sleep 2
    b=$(($b * 2))
done