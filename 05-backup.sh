#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)
LOG_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} # if not provided consider as 14days ##
mkdir -p $LOG_FOLDER
echo "Script strated at $(date)" | tee -a $LOG_FILE
if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script as root privelliage"
    exit 1
fi
USAGE() {
    echo -e "$R USAGE:: 05-backup.sh <SOURCE_DIR> <DEST_DIR> <DAYS> $N" # DAYS optinonal
    exit 1
}

### Check SOURCE_DIR and DEST_DIR passed or not ####
if [ $# -lt 2 ]; then
    USAGE
fi

if [ ! -d $SOURCE_DIR ]; then
    echo -e "$R Source directory $SOURCE_DIR does not exist $N"
    exit 1
fi

if [ ! -d $DEST_DIR_DIR ]; then
    echo -e "$R dest directory $SOURCE_DIR does not exist $N"
    exit 1
fi

### Find the files ####
FILES=$(find $SOURCE_DIR -name "*.log" -type -f +mtime $DAYS)

if [ ! -z "${FILES}" ] ; then
    echo "Files found: $FILES"
    TIMESTAMP=$(date +%F-%H-%M)
    ZIPFILE=$DEST_DIR/app-logs-$TIMESTAMP.zip
    find $SOURCE_DIR -name "*.log" -type -f +mtime $DAYS | zip -@ -j "$ZIPFILE"

    ## check Archival sucess or not ###
    if [ -f $ZIPFILE ];  then
        echo -e "Archival..$G SUCCESS $N"
        while IFS= read -r project || [ -n "$file" ]
        do
        echo "deleteing files $project
        rm -rf $project
        echo "Deleted files: $project
        done <<< $FILES
        echo -e "Archival..$R FAILURE $N"
    fi
else
    echo -e "NO files to Archieve $Y SKIIPING $N"
fi
