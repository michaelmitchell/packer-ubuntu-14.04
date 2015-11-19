#!/bin/bash -eux

# Make sure vagrant user is created
adduser --disabled-password --gecos "" vagrant

# Add vagrant user to sudoers.
echo "vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
