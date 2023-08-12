#!/usr/bin/env bash

if command -v arch >/dev/null 2>&1; then
  platform=$(arch)
else
  platform=$(uname -m)
fi

if [ "$platform" = "aarch64" ]; then
  wget -O /tmp/graalvm.tgz https://download.oracle.com/graalvm/17/latest/graalvm-jdk-17_linux-aarch64_bin.tar.gz
else
  wget -O /tmp/graalvm.tgz https://download.oracle.com/graalvm/17/latest/graalvm-jdk-17_linux-x64_bin.tar.gz
fi

sudo tar xf /tmp/graalvm.tgz -C /opt
sudo find /opt -name 'graalvm-jdk-*' -exec ln -sf {} graalvm \;

echo 'export MAVEN_HOME=/opt/maven' > /tmp/graalvm.sh
echo 'export JAVA_HOME=/opt/graalvm' >> /tmp/graalvm.sh
echo 'export GRAALVM_HOME=/opt/graalvm' >> /tmp/graalvm.sh
echo 'export PATH="${JAVA_HOME}/bin:${PATH}"' >> /tmp/graalvm.sh
sudo mv /tmp/graalvm.sh /etc/profile.d/graalvm.sh
sudo chmod 444 /etc/profile.d/graalvm.sh

rm -f /tmp/graalvm.tgz
