#!/bin/bash

# do not edit this script except for fixing issues with the basic setup

echo "installing in chroot..." # debug
apt-get update
apt-get upgrade -y
apt-get install -y systemd bash # debug, currently wip
### installing user-defined packages (build.sh)
#apt-get install -y ${apt_packages} # invoked in make.sh

# invoke other functions
# there should be a for cycle with files in function directory :) #TODO

echo "done installing in chroot..." # debug
