#!/bin/bash
#VARIABLE=$(COMMAND)

START_TIME=$(date +%S)
sleep 50 &
END_TIME=(date +%S))
TOTAL_TIME=$((START_TIME-END_TIME))
echo "script executed in $TOTAL_TIME in seconds"
