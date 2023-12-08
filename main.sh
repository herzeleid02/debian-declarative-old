#!/bin/bash # probably no posix :(

# these ones should be passed from the build script
#chroot_directory=""
#hostname=""

install_systemd(){
	chroot ${chroot_directory} << EOS
apt-get install -y systemd
EOS
}

set_hostname(){
	chroot ${chroot_directory} << EOS
hostnamectl hostname ${hostname}
EOS
}

install_bash(){
	chroot ${chroot_directory} << EOS
apt-get install -y bash
}
