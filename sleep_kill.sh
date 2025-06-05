#!/bin/bash
echo "sleep and kill"
ls -l  /proc/$$/ns/pid*
#cat /proc/1/status
sleep 15
echo "countdown of kill -9 0"
/srv/kill0.sh
echo "after"
