#!/bin/bash
for x in {10..1}
do
	echo $x
	sleep 1
done

ls -l /proc/$$/ns/pid

kill -9 0
