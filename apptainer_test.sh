#!/bin/bash
apptainer run -B $PWD:/srv -C docker://ubuntu:latest /srv/sleep_inf.sh &
sleep 1
apptainer run -B $PWD:/srv -C docker://ubuntu:latest /srv/sleep_inf.sh &
sleep 1
apptainer run -B $PWD:/srv -C docker://ubuntu:latest /srv/sleep_inf.sh &
sleep 1
apptainer run -B $PWD:/srv -C docker://ubuntu:latest /srv/sleep_inf.sh &
sleep 1
apptainer run -B $PWD:/srv -C docker://ubuntu:latest /srv/sleep_inf.sh &
sleep 1
apptainer run -B $PWD:/srv -C docker://ubuntu:latest /srv/sleep_kill.sh &
sleep 10
pstree -S $$ 
wait

