#!/bin/bash -e
#Remove unnecessary packages added by stage2
export DEBIAN_FRONTEND=noninteractive
export SUDO_FORCE_REMOVE=yes
apt-get -y -f purge \
	ssh openssh-server sudo strace ed ncdu \
	build-essential manpages-dev bash-completion gdb pkg-config \
	python-is-python3 \
	v4l-utils \
	python3-libgpiod \
	python3-gpiozero \
	pigpio python3-pigpio raspi-gpio python3-rpi.gpio \
	python3-spidev \
	python3-smbus2 \
	avahi-daemon \
	lua5.1 \
	luajit \
	nfs-common usbutils \
	libraspberrypi-dev libraspberrypi-doc libfreetype6-dev \
	dosfstools \
	dphys-swapfile \
	pi-bluetooth \
	apt-listchanges \
	usb-modeswitch \
	libpam-chksshpwd \
	rpi-update \
	libmtp-runtime \
	rsync \
	man-db \
	ssh-import-id \
	ntfs-3g \
	pciutils \
	udisks2 \
	unzip zip p7zip-full \
	file \
	cifs-utils \
	libcamera-apps-lite \
	mkvtoolnix

apt-get -y -f autopurge
