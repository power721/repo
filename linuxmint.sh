#!/usr/bin/env bash

# sublime text
./sublime.sh

# Deveploment
./jdk17.sh
./maven.sh
./go.sh
./node.sh
./docker_mint.sh

./git.sh

git config --global user.name 'Har01d'
git config --global user.email 'power0721@gmail.com'

#./redis.sh
#./elasticsearch8.sh
#./nginx.sh

# Google Chrome

lsb_release -a