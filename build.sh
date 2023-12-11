#!/bin/bash 
# no posix :(

# 
export container_image="debian:12"
export hostname="debiandeclarative"
export username="debianuser"
export apt_packages="vim neofetch zsh"

export project_directory="./" # (dirty hack) TODO: replace it

export chroot_directory="$1" # do not access $1 ever again

echo "run as root"

if [ -z "$1" ]; then
	echo "provide a chroot directory"
	#exit 1
fi

printf "%i\n" 1
printf "%s\n" "printing out main.sh" 

./main.sh "$@"
