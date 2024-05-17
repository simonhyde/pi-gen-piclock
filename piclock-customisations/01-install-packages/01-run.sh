#!/bin/bash -e

#Fixup bug in if-up scripts
sed -i -e 's/^service=/export service=/' "${ROOTFS_DIR}/etc/network/if-up.d/ntpsec-ntpdate"
