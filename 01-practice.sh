#!/bin/bash
N1=100
N2=200
NAME=devops
COURSES=("linux","git","docker")
SUM=$($N1+$N2+$NAME)
echo "Total is: $SUM"
echo "first course is:${COURSES[0]}"