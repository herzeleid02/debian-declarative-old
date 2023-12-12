##################################################
# this script is a default locale setup function #
##################################################
# this file is a part of a bigger project
# visit https://github.com/herzeleid02/debian-declarative for more info
# this script generates all locales :)
#!/bin/bash
set -o posix

sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen
locale-gen
