#!/bin/bash -x
set -o posix

export container_image="debian:12"
export hostname="debiandeclarative"
export users="debianuser chuck"
export apt_packages="zsh cowsay htop neofetch"
export functions="locale_utf8_en_us.sh locale_utf8_ru_ru.sh debian-doas-setup.sh "chuck"" # var for functions


export project_directory="./" # (dirty hack) TODO: replace it

export chroot_directory="$1" # do not access $1 ever again




./make.sh "$@"
