#!/bin/bash -e

install -v -m 644 files/autohostname.service	"${ROOTFS_DIR}/etc/systemd/system/"
install -v -m 700 files/autohostname.sh		"${ROOTFS_DIR}/usr/local/sbin"
