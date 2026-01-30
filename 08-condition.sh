#!/bin/bash

USERID=$(id -u)
if [ $USERID -eq 0 ]; then
    echo "rin this script"
else
    echo "faliure"
fi


VALIDATE(){
    if [ $1 -eq 0 ]; then
        echo "SUCCESS:: removing $2 is success."
    else
    echo "FAILURE:: removing $2 is failure."
    fi
}

dnf remove nginx -y
VALIDATE $? "nginx"
dnf remove mysql -y
VALIDATE $? "mysql"
dnf remove  nodejs -y
VALIDATE $? "nodejs"
