#!/usr/bin/env bash

if command -v arch >/dev/null 2>&1; then
  platform=$(arch)
else
  platform=$(uname -m)
fi

VERSION=22.17.1
PRIORITY=100

ARCH=x64
if [ "$platform" = "aarch64" ]; then
	ARCH=arm64
fi
echo "platform: ${platform} arch: ${ARCH}"
wget -O /tmp/node.tgz https://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-${ARCH}.tar.xz
sudo tar xf /tmp/node.tgz -C /usr/lib
sudo chown -R root:root /usr/lib/node-v${VERSION}-linux-${ARCH}

sudo update-alternatives --install /usr/bin/node node /usr/lib/node-v${VERSION}-linux-${ARCH}/bin/node ${PRIORITY}
sudo update-alternatives --install /usr/bin/npm npm /usr/lib/node-v${VERSION}-linux-${ARCH}/bin/npm ${PRIORITY}

echo "export NODE_HOME=/usr/lib/node-v${VERSION}-linux-${ARCH}" >/tmp/node-env.sh
echo "export PATH=/usr/lib/node-v${VERSION}-linux-${ARCH}/bin:\$PATH" >>/tmp/node-env.sh

sudo cp /tmp/node-env.sh /etc/profile.d/
sudo chmod 444 /etc/profile.d/node-env.sh

rm -f /tmp/node.tgz

echo -n "node version: " && node -v
echo -n "npm  version: " && npm -v
