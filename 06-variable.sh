#!/bin/bash

echo "all variables passed to script: $@"
echo "all variables passed to script: $*"
echo "curent directory: $PWD"
echo "who is running: $USER"
echo "home directory of user: $HOME"
echo "PID of this script: $$"
sleep 20 &
echo "PID of this last command is: $!"
