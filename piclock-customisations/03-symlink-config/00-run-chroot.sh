#!/bin/bash -e
#Symlink some configuration out to the SD card

SD_CFG_DIR=/boot/firmware/piclock_config

if [ ! -d "$SD_CFG_DIR" ]; then
	mkdir "$SD_CFG_DIR"
fi

for a in ntpsec/ntp.conf piclock.cfg network/interfaces.d/wired-network.conf; do
	if [ ! -L "/etc/$a" ]; then
		mv "/etc/$a" "$SD_CFG_DIR"
		ln -s "$SD_CFG_DIR/$(basename "$a")" "/etc/$a"
	fi
done
