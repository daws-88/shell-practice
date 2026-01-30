#!/bin/bash


dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "ERROR:: installing nginx is failure"
else    
    echo "SUCCESS:: installing mysql is sucess"
fi