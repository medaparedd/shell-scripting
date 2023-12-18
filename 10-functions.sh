#!/bin/bash

ID=$(id -u)

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



yum install mysql -y

VALIDATE $? "mysql installing"

yum install git -y

VALIDATE $? "git installing"