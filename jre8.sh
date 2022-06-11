#!/usr/bin/env bash

wget -O /tmp/jre8.tgz https://github.com/power721/repo/releases/download/JDK/server-jre-8u321-linux-x64.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar xf /tmp/jre8.tgz -C /usr/lib/jvm
VERSION=jdk1.8.0_321
PRIORITY=100
sudo chown -R root:root /usr/lib/jvm/${VERSION}

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/${VERSION}/jre/bin/java ${PRIORITY}
sudo update-alternatives --install /usr/bin/jjs jjs /usr/lib/jvm/${VERSION}/jre/bin/jjs ${PRIORITY}
sudo update-alternatives --install /usr/bin/keytool keytool /usr/lib/jvm/${VERSION}/jre/bin/keytool ${PRIORITY}

update-alternatives --display java

java -version
