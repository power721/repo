#!/usr/bin/env bash

VERSION=3.9.5
PRIORITY=100

wget -O /tmp/maven.tgz https://archive.apache.org/dist/maven/maven-3/${VERSION}/binaries/apache-maven-${VERSION}-bin.tar.gz
sudo tar xf /tmp/maven.tgz -C /usr/lib
sudo chown -R root:root /usr/lib/apache-maven-${VERSION}
sudo find /usr/lib/apache-maven-${VERSION} -type d  -exec chmod 755 {} \;

sudo update-alternatives --install /usr/bin/mvn mvn /usr/lib/apache-maven-${VERSION}/bin/mvn ${PRIORITY}

echo "export MAVEN_HOME=/usr/lib/apache-maven-${VERSION}" >/tmp/maven-env.sh
sudo cp /tmp/maven-env.sh /etc/profile.d/
sudo chmod 444 /etc/profile.d/maven-env.sh

echo -n "maven version: " && mvn -v
