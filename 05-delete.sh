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

SOURCE_DIR=/home/ec2-user/app-logs
if [ ! -d $SOURCE_DIR ]; then
    echo -e "ERROR:$R $SOURCE_DIR $N does not exist"
    exit 1
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -type f -mtime +14)

while IFS= read -r file || [ -n "$file" ]
do
echo "deleteing files $file"
rm -rf $file
echo "Deleted files: $file"
done <<< $FILES_TO_DELETE