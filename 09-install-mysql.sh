#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "error:: please ru the script again"
else
    echo  "proceed"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "installation failed"
    exit 1
else
    echo "installation success"
fi