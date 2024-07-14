#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0  | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

#VALIDATE(){
    #echo "Exit status: $1"
    #echo "What are you doing: $2"
#}
VALIDATE(){
    if [ $1 -ne  0 ]
    then
        echo "$2...Failure"
        exit 1
    else
         echo "$2...Success"
    fi 
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y &>>$LOGFILE

VALIDATE $? "installing mysql"


dnf install git -y &>>$LOGFILE

VALIDATE $? "installing git"

echo "is script proceeding?"