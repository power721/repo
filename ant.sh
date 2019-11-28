#!/usr/bin/env bash

VERSION=1.9.13
PRIORITY=100

wget -O /tmp/ant.tgz https://archive.apache.org/dist/ant/binaries/apache-ant-${VERSION}-bin.tar.gz
sudo tar xf /tmp/ant.tgz -C /usr/lib
sudo chown -R root:root /usr/lib/apache-ant-${VERSION}

sudo update-alternatives --install /usr/bin/ant ant /usr/lib/apache-ant-${VERSION}/bin/ant ${PRIORITY}

echo "export ANT_HOME=/usr/lib/apache-ant-${VERSION}" >/tmp/ant-env.sh
sudo cp /tmp/ant-env.sh /etc/profile.d/
sudo chmod 444 /etc/profile.d/ant-env.sh

echo -n "ant version: " && ant -v
