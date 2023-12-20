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
       h|*) USAGE; exit;;
    esac
done