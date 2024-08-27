#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "run script with root user"
    exit 1
fi

dnf install mysql -y
dnf install nginx -y