#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then   
    echo "ERROR::please run this script root privelliage"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "ERROR:: please run script with root privelege"
        exit 1
    else
        echo "installing $2 is SUCCESS"
    fi

}

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mysql -y
VALIDATE $? "mysql"

dnf install python3 -y
VALIDATE $? "python3"
