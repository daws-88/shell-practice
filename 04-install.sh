#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROE:: run this script with root privieelage"
fi

dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "ERROR:: installing nginx is failure"
else
    echo "SUCCESS:: installing nginx is sucess"
fi
