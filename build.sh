#!/bin/bash 
# no posix :(

# 
export image="debian:12"
export hostname="debiandeclarative"
export username="debianuser"
export apt_packages="vim neofetch zsh"

export chroot_directory="$2" # do not access $2 ever again

if [ -z "$2" ]; then
	echo "provide a chroot directory"
	#exit 1
fi


./main.sh "$@"
