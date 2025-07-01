#!/bin/bash
sudo dnf install -y epel-release apptainer podman

apptainer run -B $PWD:/srv -C docker://ubuntu:latest cat /etc/lsb-release
podman pull ubuntu:latest
