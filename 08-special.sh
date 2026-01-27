#1/bin/bash

echo "all variables passes to script: $@"
echo "all variables passed to script: $*"
echo "script name: $0"
echo "curent dirctory: $PWD"
echo "Who is running: $USER"
echo "home directory of user: $HOME"
echo "PID of this script: $$"
sleep 50 &
echo "PIDof this last command in background: $!"
