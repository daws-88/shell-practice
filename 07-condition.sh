#!/bin/bash


dnf install nginx -y
if [ $? -eq 0 ]; then
    echo "SUCCESS:: installing nginx is success"
else    
    echo "FAILURE:: installing nginx is fail" 
fi