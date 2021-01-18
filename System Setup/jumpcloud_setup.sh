#! /usr/bin/bash

jumpcloud_key=$1
original_issue=$(cat /etc/issue)
supported_issue="Ubuntu 20.04.1 LTS \n \l"

sudo apt install apt-rdepends apt-show-versions coreutils\
curl sudo dpkg grep hostname libc-bin lsb-release lsof mawk passwd \
procps sysvinit-utils tar sudo gdebi-core libnss3 libnss3-tools -y

echo "$supported_issue" | sudo tee /etc/issue

# curl --tlsv1.2 --silent --show-error --header "x-connect-key: $jumpcloud_key" https://kickstart.jumpcloud.com/Kickstart | sudo bash

echo "$original_issue" | sudo tee /etc/issue
