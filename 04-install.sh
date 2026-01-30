#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR:: run this script with root privieelage"
    exit 1
fi

dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "ERROR:: installing nginx is failure"
    exit 1
else
    echo "SUCCESS:: installing nginx is sucess"
fi
