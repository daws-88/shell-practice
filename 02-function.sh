#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script as root privelliage"
    exit 1
fi
VALIDATE() {
    if [ $1 -ne 0]; then
        echo "installing $2 is failure"
        exit 1
    else 
        echo " installing $2 is success"
    fi
}

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mysql -y
VALIDATE $? "mysql"

dnf install nodejs -y
VALIDATE $? "nodejs"


