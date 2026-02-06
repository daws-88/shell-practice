#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)
LOG_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"
mkdir -p $LOG_FOLDER
echo "Script strated at $(date)" | tee -a $LOG_FILE
if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script as root privelliage"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "installing $2 ....$R FAILURE $N" | tee -a $LOG_FILE
        exit 1
    else 
        echo -e " installing $2....$G SUCCESS $N" | tee -a $LOG_FILE
    fi
}

for package in $@
do
   dnf list installed $package name &>>$LOG_FILE
   if [ $? -ne 0 ]; then
   dnf install $package -y &>>$LOG_FILE
   VALIDATE $? "$package"
   else
        echo -e "Nothing to do $package... $Y already installed $N" | tee -a $LOG_FILE
   fi
done 

