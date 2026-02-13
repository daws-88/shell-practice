#!/bin/bash
set -e
error() {
    echo "Thre is an error in $LINENO, Command is $BASH_COMMAND"
}
trap error ERR

echo "Hello"
echo "Before error"
eeeeeeeee    # shell understand there is an error anf signal is ERR
echo "After error"