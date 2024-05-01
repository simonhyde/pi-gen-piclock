#!/bin/bash -e
#Disable first-run services that make no sense on a readonly system

systemctl disable resize2fs_once

systemctl disable sshswitch
