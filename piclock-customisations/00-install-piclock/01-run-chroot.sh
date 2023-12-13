#!/bin/bash -e
dpkg -i --force-depends /extra-packages/*.deb
#Install dependencies of packages
DEBIAN_FRONTEND=noninteractive apt-get -y -f install
