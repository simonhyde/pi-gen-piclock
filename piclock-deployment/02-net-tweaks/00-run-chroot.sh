#!/bin/bash -e
#Remove unnecessary packages added by stage2
export DEBIAN_FRONTEND=noninteractive
apt-get -y -f purge wpasupplicant

apt-get -y -f autopurge
