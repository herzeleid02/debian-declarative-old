#!/bin/bash

# do not edit this script except for fixing issues with the basic setup

# dirty, but helps to parse args fast

jank="yes" # kek
${project_directory}/build.sh "$@" 

echo "installing in chroot..." # debug
apt-get update
apt-get upgrade -y
apt-get install -y systemd bash # debug, currently wip
### installing user-defined packages (build.sh)
sleep 10 # debug 
"echo sneeding...." # debug
apt-get install -y ${apt_packages} 

# invoke other functions
# there should be a for cycle with files in function directory :) #TODO

echo "done installing in chroot..." # debug
