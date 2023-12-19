#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ...$R FAILED $N"
    else
        echo -e "$2 ...$G SUCCESS $N"
    fi
}


if [ $ID -ne 0 ]
then
    echo -e "$R not a root user $N"
    exit 1
else
    echo -e "$G root user $N"
fi

#echo "all arguments passed: $@"

for package in $@
do 
   yum list installed $package
   if [ $? -ne 0 ]
   then
        yum install $package -y
        VALIDATE $? "installation of package"
done