#!/usr/bin/env bash

sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install -y git apt-transport-https
git version