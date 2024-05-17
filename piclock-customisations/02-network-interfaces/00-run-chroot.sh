#!/bin/bash -e
#Remove unnecessary packages added by stage2
export DEBIAN_FRONTEND=noninteractive
apt-get -y -f purge network-manager

apt-get -y -f autopurge
