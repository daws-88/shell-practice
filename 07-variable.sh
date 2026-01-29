#!/bin/bash

START_TIME=$(date +%s)
sleep 25
END_TIME=$(date +%s)
TOTAL_TIME=(($END_TIME-$START_TIME))
echo "script executed in: $TOTAL_TTIME in sec"
