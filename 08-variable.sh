#!/bin/bash

echo "all variables passed to script is: $@"
echo "all varaiables passed to script is: $*
echo "name of script: $0"
echo "curent directory: $PWD"
echo "who is running: $USER"
echo "home directory of user: $HOME"
echo "PID of script: $$"
sleep 10 &
echo "PID of last command in background: $!"
