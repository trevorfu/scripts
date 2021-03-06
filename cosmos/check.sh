#!/bin/bash

source ~/.profile

echo "Check gaiad process."

FLAG=`ps -ef | grep "gaiad start" | wc -l`
if [ $FLAG -ne 2 ]; then
  nohup gaiad start --home /data/.gaiad > /data/gaiad.log 2>&1 &
  echo "Gaiad checked failure and restarted successfully."
fi