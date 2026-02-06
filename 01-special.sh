#!/bin/bash
#v special variables.
echo "All variables passed to script: $@"
echo "All variables passed to script: $*"
echo "Name of script: $0"
echo "Number of variables passed: $#"
echo "Curent working directory: $PWD"
echo "Who is running: $USER"
echo "Home directory of curent user: $HOME"
echo "Hostname is: $HOSTNAME"
echo "PID of script: $$"
sleep 10 &
echo "PID of last command in background: $!"
