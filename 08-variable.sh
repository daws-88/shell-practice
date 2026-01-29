#!/bin/bash

echo "all variables passed to script is: $@"
echo "all varaiables passed to script is: $*"
echo "name of script is: $0"
echo "presemt working directory: $PWD"
echo "who is running: $USER"
echo "HOME directory of user: $USER"
echo "PID of script: "$$"
echo "PID of this script is: $$"
sleep 20 &
echo "PID of last command in background is: $!"
