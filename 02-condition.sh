#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script as root privelliage"
    exit 1
fi

dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "ERROR:: Installing nginx is FAILURE"
    exit 1
else
    echo "Installing nginx is SUCCESS"
fi

dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "ERROR:: Installing mysql is FAILURE"
    exit 1
else
    echo "Installing mysql is SUCCESS"
fi

dnf install nodejs -y
if [ $? -ne 0 ]; then
    echo "ERROR:: Installing nodejs is FAILURE"
    exit 1
else
    echo "Installing nodejs is SUCCESS"
fi

