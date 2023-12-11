# debian-declarative

## About
This project tries to reinvent the wheel and make Debian installation declarative. (IaS solution).

This project is proof-of-concept and not meant to be used in any serious manner.

Moreover, this project is tied to [SquashLinux](https://github.com/herzeleid02/squashlinux).

Bootstrapping process is done via extracting OCI containers onto host filesystems, instead of regular bootstrap.

One of the principles for this project is to also eliminate any "jank" in it's core functionality. (its jank already)

## Structuring
`build.sh` is the one you edit -- try to invoke other scrips if possible

`main.sh` the global script -- You should **not** edit this file. This script maintains basic chroot configuration (locale setup, adding apt https repositories, etc, etc)

`functions/` -- Directory with scripts (something similar "playbooks" and "modules" in [Ansible](https://github.com/ansible/ansible)). This directory contents should be the same across all branches and you should edit existing files only to fix their functionality, not change or add new. To add new functionality you should create a new script.

To create a new system setup you should:
1) create a new branch
2) add new "functions" in the respective directory if necessary
3) edit build.sh

## Global variables for `build.sh`
`image` (OCI image name)

`hostname`

`username` (implying that this project covers single-user installation 😖)

`apt_packages` (space would be the delimiter)

## Notes
The better thing to do (which i will implement right now as im typing this text) is to edit the running container and only then exporting it.

Why? Because podman manages `/dev/null` and other special files correctly and theres no need to create stuff or mount host `/proc` and other special files and directories. (We should reduce jank to a minimum)

Maybe it should have a single dockerfile (?) (but then how its going to import itself?)
