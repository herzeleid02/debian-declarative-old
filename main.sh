#!/bin/bash -x
set -o posix

# do not edit this script except for fixing issues with the basic setup

echo "installing in chroot..." # debug
apt-get update
apt-get upgrade -y
apt-get install -y systemd bash less

# placeholder for functions (user packages should come later)

# user creation


for user in $users; do
	useradd -s /bin/bash -m $user
done

### installing user-defined packages (build.sh)
apt-get install -y ${apt_packages}

# invoke other functions
# there should be a for cycle with files in function directory :) #TODO

echo "done installing in chroot..." # debug
