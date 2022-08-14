#!/usr/bin/env bash

VERSION=1.19
PRIORITY=100

wget -O /tmp/go.tgz --no-check-certificate https://go.dev/dl/go${VERSION}.linux-amd64.tar.gz
sudo tar xf /tmp/go.tgz -C /usr/lib
sudo chown -R root:root /usr/lib/go

sudo update-alternatives --install /usr/bin/go go /usr/lib/go/bin/go ${PRIORITY}

echo "export GOROOT=/usr/lib/go" >/tmp/go-env.sh
sudo cp /tmp/go-env.sh /etc/profile.d/
sudo chmod 444 /etc/profile.d/go-env.sh

go version
