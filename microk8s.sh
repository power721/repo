#!/usr/bin/env bash

sudo snap install microk8s --classic
sudo microk8s.status --wait-ready
sudo microk8s.enable dns dashboard registry
echo "alias kubectl='microk8s.kubectl'" >>~/.bash_aliases
sudo usermod -a -G microk8s ${USER}
su - ${USER}
#echo "Installation done."
#echo "Please logout and login again!"
