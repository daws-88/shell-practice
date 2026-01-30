#!/bin/bash

USERID=$(id -u)
if [ $USERID -eq 0 ]; then
    echo "rin this script"
else
    echo "faliure"
fi


VALIDATE(){
    if [ $1 -eq 0 ]; then
        echo "SUCCESS:: installing $2 is success."
    else
    echo "FAILURE:: installing $2 is failure."
    fi

dnf install nginx -y
VALIDATE $? "nginx"
dnf install mysql -y
VALIDATE $? "mysql"
