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



dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE
    VALIDATE $? "nginx"
else
    echo -e "Nginx is already exist....$Y SKIPPING $N" | tee -a $LOG_FILE
fi

dnf list installed mysql &>> $LOG_FILE
if [ $? -ne 0 ]; then
    dnf list install mysql -y &>>$LOG_FILE
    VALIDATE $? "mysql"
else
    echo -e "Mysql is already exist...$Y SKIIPING $N" | tee -a $LOG_FILE
fi

dnf list installed nodejs &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nodejs -y &>>$LOG_FILE
    VALIDATE $? "nodejs"
else
    echo -e "Nodejsis already exist....$Y Nodejs $N" | tee -a $LOG_FILE
fi
