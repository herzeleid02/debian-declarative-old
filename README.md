# debian-declarative

## About
This project tries to reinvent the wheel and make Debian installation declarative. (IaS solution).

This project is proof-of-concept and not meant to be used in any serious manner.

Moreover, this project is tied to [SquashLinux](https://github.com/herzeleid02/squashlinux).

Bootstrapping process is done via extracting OCI containers onto host filesystems, instead of regular bootstrap.

## Structuring
`build.sh` should only invoke other scripts (the one you edit)

`main.sh` the global script -- You should **not** edit this file. This script maintains basic chroot configuration (locale setup, adding apt https repositories, etc, etc)

`functions/` -- Directory with scripts (something similar "playbooks" and "modules" in [Ansible](https://github.com/ansible/ansible)). This directory contents should be the same across all branches and you should edit existing files only to fix their functionality, not change or add new. To add new functionality you should create a new script.

To create a new system setup you should:
1) create a new branch
2) add new "functions" in the respective directory if necessary
3) edit build.sh
