#!/usr/bin/env bash

sudo apt update
sudo apt-get install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
CODENAME=$(grep -o 'DISTRIB_CODENAME=.*' /etc/upstream-release/lsb-release | awk -F= '{print $2}')
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $CODENAME stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo docker run hello-world
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
