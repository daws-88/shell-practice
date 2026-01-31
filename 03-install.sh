#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)
if [ $USERID ne 0 ]; then
    echo "ERROR:: Please run this script as root privelliage"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0]; then
        echo -e "installing $2 ....$R FAILURE $N"
        exit 1
    else 
        echo -e " installing $2....$G SUCCESS $N"
    fi
}



dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "Nginx is already exist....$Y SKIPPING $N"
fi

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf list install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "Mysql is already exist...$Y SKIIPING $N"
fi

dnf list installed nodejs
if [ $? -ne 0 ]; then
    dnf install nodejs -y
    VALIDATE $? "nodejs"
else
    echo -e "Nodejsis already exist....$Y Nodejs $N"
fi


