#!/bin/sh -e
#
#Unnecessary packages which were seen to be installed
export DEBIAN_FRONTEND=noninteractive
export SUDO_FORCE_REMOVE=yes
apt-get purge -y -f less vim-tiny vim-common nano gcc gcc-12 ghostscript fakeroot manpages ppp shared-mime-info tasksel triggerhappy xz-utils zstd curl dos2unix userconf-pi htop make dpkg-dev traceroute systemd-timesyncd
apt-get autoremove --purge -y -f
