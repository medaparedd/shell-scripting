#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "error:: please ru the script again"
else
    echo  "proceed"
fi

yum install mysql -y