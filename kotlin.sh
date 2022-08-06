#!/usr/bin/env bash

VERSION=1.6.21
PRIORITY=100

sudo apt install unzip

wget -O /tmp/kotlin.zip https://github.com/JetBrains/kotlin/releases/download/v${VERSION}/kotlin-compiler-${VERSION}.zip
sudo unzip /tmp/kotlin.zip -d /usr/lib
sudo chown -R root:root /usr/lib/kotlinc

sudo update-alternatives --install /usr/bin/kotlin kotlin /usr/lib/kotlinc/bin/kotlin ${PRIORITY}
sudo update-alternatives --install /usr/bin/kotlinc kotlinc /usr/lib/kotlinc/bin/kotlinc ${PRIORITY}

kotlin -version
kotlinc -version
