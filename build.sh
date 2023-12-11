#!/bin/bash 
# no posix :(

# 
export container_image="debian:12"
export hostname="debiandeclarative"
export username="debianuser"
export apt_packages="vim neofetch zsh fish cowsay htop"

export project_directory="./" # (dirty hack) TODO: replace it

export chroot_directory="$1" # do not access $1 ever again


./make.sh "$@"
