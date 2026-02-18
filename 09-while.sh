#!/bin/bash
b=2
while [ $b -le 20 ]
do
    echo "$b"
    sleep 2
    b=$(($b * 2))
done