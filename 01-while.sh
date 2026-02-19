#!/bin/bash
t=5
echo "Strat Count"
while [ $t -gt 0 ]
do 
echo "Time left is:$t"
sleep 1
t=$(($t -1))
done
echo "Times up"