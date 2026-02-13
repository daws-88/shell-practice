#!/bin/bash

set -euo pipefail

trap  'echo "There is an error in $LINENO, command is $BASH_COMMAND"' ERR

echo "Hello"
echo "Before error"
eeeeeeeee    # shell understand there is an error anf signal is ERR
echo "After error"