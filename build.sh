#!/bin/bash 
set -o posix

export container_image="debian:12"
export hostname="debiandeclarative"
export users="debianuser chuck"
export apt_packages="zsh cowsay htop neofetch"

export project_directory="./" # (dirty hack) TODO: replace it

export chroot_directory="$1" # do not access $1 ever again


./make.sh "$@"
