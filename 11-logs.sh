#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    
    if [ $1 -ne 0 ]
then
    echo "$2 ... FAILED"
    exit 1
else
    echo "$2 ...success"
fi

}

if [ $ID -ne 0 ]
then
    echo "not a root user"
    exit 1
else
    echo "root user"
fi



yum install mysql -y &>> $LOGFILE

VALIDATE $? "mysql installing"

yum install git -y &>> $LOGFILE

VALIDATE $? "git installing"