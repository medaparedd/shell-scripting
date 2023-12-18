#!/bin/bash

NUMBER1=$1
NUMBER2=$2
SUM=$(($NUMBER1+NUMBER2))
echo "total is: $SUM"
echo "no of args is: $#"
echo "no of args passed: $@"
echo "script name is: $0"