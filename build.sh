#!/bin/bash 
# no posix :(

export container_image="debian:12"
export hostname="debiandeclarative"
export username="debianuser"
export apt_packages="vim neofetch zsh fish cowsay htop"

# the apt_packages thing will be parsed by awk kek

export project_directory="./" # (dirty hack) TODO: replace it

export chroot_directory="$1" # do not access $1 ever again


if [ -z ${jank} ]; then
	./make.sh "$@"
fi
