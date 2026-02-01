#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOGS_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log
mkdir -p $LOG_FOLDER
echo "Script strated executed at: $(date)" | tee -a $LOGS_FILE


if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script as root privelliage"
    exit 1
fi
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script as root privelliage"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "installing $2 ....$R FAILURE $N" | tee -a $LOGS_FILE
        exit 1
    else 
        echo -e " installing $2....$G SUCCESS $N" | tee -a $LOGS_FILE
    fi
}


dnf list installed nginx &>> $LOGS_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>> $LOGS_FILE
    VALIDATE $? "nginx"
else
    echo -e "Nginx is already exist....$Y SKIPPING $N" | tee -a $LOGS_FILE
fi

dnf list installed mysql &>>$LOGS_FILE
if [ $? -ne 0 ]; then
    dnf list install mysql -y &>>$LOGS_FILE
    VALIDATE $? "mysql"
else
    echo -e "Mysql is already exist...$Y SKIIPING $N" | tee -a $LOGS_FILE
fi
dnf list installed nodejs &>>$LOGS_FILE
if [ $? -ne 0 ]; then
    dnf install nodejs -y &>>$LOGS_FILE
    VALIDATE $? "nodejs"
else
    echo -e "Nodejs is already exist...$Y SKIIPING $N" | tee -a $LOGS_FILE
fi