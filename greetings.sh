#!/bin/bash

NAME=""
WISHES=""

USAGE(){
     echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
     echo "options::"
     echo " -n, Specify the name (mandatory)"
     echo " -w, Specify the wishes. ex, good morning"
     echo " -h, display help and exit"
}

while getopts ":n:w:h" opt; do
     case $opt in 
       n) NAME="$OPTARG";;
       w) WISHES="$OPTARG";;
       \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
       :) USAGE; exit;;
       h) USAGE; exit;;
    esac
done

if [ -z "$NAME" ] || [ -z "$wishes" ]; then
   echo "error"
   USAGE
   exit 1
fi

echo "hello $NAME. $WISHES. I HAVE BEEN LEARNING SHELL SCRIPTING."