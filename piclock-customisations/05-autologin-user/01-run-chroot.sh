#!/bin/bash -e

if ! grep -q '^piclock:' /etc/passwd; then
	cp /etc/adduser.conf /tmp/adduser.conf
	echo "USERGROUPS=no" >> /tmp/adduser.conf
	adduser piclock --conf /tmp/adduser.conf --disabled-password --comment piclock
	rm /tmp/adduser.conf
fi
cat <<EOF > /home/piclock/.bashrc
rm -f /tmp/piclock_clean_exit

/usr/bin/piclock-startx-wrapper

#Just automatically restart (by exiting and allowing auto-login to re-run, unless they've explicitly quit the app by pressing 'q', in which case pause to allow user interaction.

if [ -e /tmp/piclock_clean_exit ]; then
        read -n1 -r -p "Press any key to continue..." key
fi

exit 0
EOF

#Set auto-login as piclock (this doesn't do anything with SUDO, despite the variable name)
SUDO_USER=piclock raspi-config nonint do_boot_behaviour B2
