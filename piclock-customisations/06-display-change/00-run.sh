#!/bin/bash -e
#

#Install a set of scripts that'll re-start the X session when a monitor is plugged/unplugged

install -v -m 644 files/99-display-change.rules "${ROOTFS_DIR}/etc/udev/rules.d/"
install -v -m 755 files/display-change-handler "${ROOTFS_DIR}/usr/local/sbin/"
