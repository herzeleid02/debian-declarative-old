#!/bin/bash 
# probably no posix :(

#image="debian:12"
#hostname="debiandeclarative"
#username="debianuser"
#apt_packages="vim neofetch zsh"

echo $apt_packages # debug

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
EOS
}
