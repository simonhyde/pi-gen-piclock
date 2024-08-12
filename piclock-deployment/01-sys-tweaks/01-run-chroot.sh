#!/bin/bash -e
#Disable first-run services that make no sense on a readonly system

systemctl disable resize2fs_once

#This service doesn't seem to exist on this buld anymore, so this was erroring
systemctl disable sshswitch || true
