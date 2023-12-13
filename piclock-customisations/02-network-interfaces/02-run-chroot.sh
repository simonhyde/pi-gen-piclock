#!/bin/bash -e
#
#Add example text onto the end of the dhcpcd config file
cat <<END >> /etc/network/interfaces.d/wired-network.conf

auto eth0
allow-hotplug eth0

#Enable DHCP mode, comment this out for static IP addressing
iface eth0 inet dhcp

#Static IP addressing settings, uncomment and edit below to enable
#iface eth0 inet static
#	address 192.168.33.55/24
#	gateway 192.168.33.254
#	dns-nameservers 8.8.8.8 8.8.4.4
#	dns-search my.domain.com
#
END
