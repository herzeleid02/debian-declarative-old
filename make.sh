#!/bin/bash 
set -o posix
# DO NOT edit this file directory (except in cases where you want to fix it)

#echo $apt_packages # debug
#echo $chroot_directory # debug
project_mount="/opt/project/"
#build_root="/tmp/iso-$(date +%d%m%Y)-$(tr -dc a-z </dev/urandom | head -c 4)" # disabled for now
container_name="bootstrap-$(tr -dc a-z </dev/urandom | head -c 4)"

project_directory=$(realpath ${project_directory})

echo "run as root"

if [ -z "$1" ]; then
	echo "provide a chroot directory"
	exit 1
fi

# janky replacement for the installation function script :( (maybe i should make a separate file :/ )

# to be replaced with containerfile
#podman run --rm --name ${container_name} --volume ${project_directory}:${project_mount}:z -it ${container_image} /bin/bash
# use the "main.sh" ""function""
podman run -it --name ${container_name} --volume ${project_directory}:${project_mount}:z ${container_image} ${project_mount}/main.sh "$@"
#podman exec ${container_name} "/bin/sh -c "/usr/bin/apt-get -y install ${apt_packages}""

# beware -- using the same string for the latter container image
podman commit ${container_name} ${container_name}
podman save ${container_image} | tar -xpf - -O | tar -xpf - -C ${chroot_directory} # no cleanup? kek 
podman image rm ${container_name}
