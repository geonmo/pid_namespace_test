#!/bin/bash
podman run -v $PWD:/srv:Z -w /srv ubuntu:latest /srv/sleep_inf.sh &
sleep 1
podman run -v $PWD:/srv:Z -w /srv ubuntu:latest /srv/sleep_inf.sh &
sleep 1
podman run -v $PWD:/srv:Z -w /srv ubuntu:latest /srv/sleep_inf.sh &
sleep 1
podman run -v $PWD:/srv:Z -w /srv ubuntu:latest /srv/sleep_inf.sh &
sleep 1
podman run -v $PWD:/srv:Z -w /srv ubuntu:latest /srv/sleep_kill.sh &
sleep 10
pstree -S $$ 
wait

