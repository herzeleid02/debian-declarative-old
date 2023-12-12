#!/bin/bash
set -o posix

doasusers="$1"

apt-get install -y opendoas || apt-get install -y doas

for user in $doasusers; do
	echo "permit ${user} as root" >> /etc/doas.conf
done
