#!/usr/bin/env bash

VERSION=1.20.6
PRIORITY=100

if command -v arch >/dev/null 2>&1; then
  platform=$(arch)
else
  platform=$(uname -m)
fi

if [ "$platform" = "aarch64" ]; then
  wget -O /tmp/go.tgz --no-check-certificate https://go.dev/dl/go${VERSION}.linux-arm64.tar.gz
else
  wget -O /tmp/go.tgz --no-check-certificate https://go.dev/dl/go${VERSION}.linux-amd64.tar.gz
fi

sudo tar xf /tmp/go.tgz -C /usr/lib
sudo chown -R root:root /usr/lib/go

sudo update-alternatives --install /usr/bin/go go /usr/lib/go/bin/go ${PRIORITY}

echo "export GOROOT=/usr/lib/go" >/tmp/go-env.sh
sudo cp /tmp/go-env.sh /etc/profile.d/
sudo chmod 444 /etc/profile.d/go-env.sh

go version
