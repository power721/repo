#!/usr/bin/env bash

VERSION=12.13.1
PRIORITY=100
wget -O /tmp/node.tgz https://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x64.tar.xz
sudo tar xf /tmp/node.tgz -C /usr/lib
sudo chown -R root:root /usr/lib/node-v${VERSION}-linux-x64

sudo update-alternatives --install /usr/bin/node node /usr/lib/node-v${VERSION}-linux-x64/bin/node ${PRIORITY}
sudo update-alternatives --install /usr/bin/npm npm /usr/lib/node-v${VERSION}-linux-x64/bin/npm ${PRIORITY}

echo "export NODE_HOME=/usr/lib/node-v${VERSION}-linux-x64" >/tmp/node-env.sh
echo "export PATH=$PATH:/usr/lib/node-v${VERSION}-linux-x64/bin" >>/tmp/node-env.sh

sudo cp /tmp/node-env.sh /etc/profile.d/
sudo chmod 444 /etc/profile.d/node-env.sh

echo -n "node version: " && node -v
echo -n "npm  version: " && npm -v
