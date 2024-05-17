#!/bin/bash -e
PACKAGE_DIR="${ROOTFS_DIR}/extra-packages"
mkdir -p "$PACKAGE_DIR"
cp -v files/*.deb "$PACKAGE_DIR"
