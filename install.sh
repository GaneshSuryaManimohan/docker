#!/bin/bash

set -e
R="e\[31m"
N="e\[0m"
dnf -y install dnf-plugins-core
dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl enable --now docker
systemctl start docker
usermod -aG docker ec2-user
#newgrp docker
echo -e "$R Logout and Login again to apply the new group membership $N"