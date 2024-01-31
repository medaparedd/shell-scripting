#!/bin/bash

SOURCE_DIR="/temp"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ]
then
    echo -e "$R Source Directory: $SOURCE_DIR does not exists"
    exit 1
else
    echo -e "$G its exists, you can proceed to further process"
fi

cd /$SOURCE_DIR/

FILES_TO_DELETE=$(find .  -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
   echo "Deleting file: $line"
   rm -rf $line
done <<< $FILES_TO_DELETE