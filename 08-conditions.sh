#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 200 ]
then
   echo "given number is greater than 200"
else
   echo "given number is not greater than 200"
fi