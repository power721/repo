#!/usr/bin/env bash

wget -O /tmp/jdk17.tgz https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar xf /tmp/jdk17.tgz -C /usr/lib/jvm
rm /tmp/jdk17.tgz
sudo ln -sf /usr/lib/jvm/amazon-corretto-17.*-linux-x64 /usr/lib/jvm/jdk17

VERSION=jdk17
PRIORITY=100
sudo chown -R root:root /usr/lib/jvm/${VERSION}

sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/${VERSION}/bin/jar ${PRIORITY}
sudo update-alternatives --install /usr/bin/jarsigner jarsigner /usr/lib/jvm/${VERSION}/bin/jarsigner ${PRIORITY}
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/${VERSION}/bin/java ${PRIORITY}
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/${VERSION}/bin/javac ${PRIORITY}
sudo update-alternatives --install /usr/bin/javadoc javadoc /usr/lib/jvm/${VERSION}/bin/javadoc ${PRIORITY}
sudo update-alternatives --install /usr/bin/javap javap /usr/lib/jvm/${VERSION}/bin/javap ${PRIORITY}
sudo update-alternatives --install /usr/bin/jcmd jcmd /usr/lib/jvm/${VERSION}/bin/jcmd ${PRIORITY}
sudo update-alternatives --install /usr/bin/jconsole jconsole /usr/lib/jvm/${VERSION}/bin/jconsole ${PRIORITY}
sudo update-alternatives --install /usr/bin/jdb jdb /usr/lib/jvm/${VERSION}/bin/jdb ${PRIORITY}
sudo update-alternatives --install /usr/bin/jdeprscan jdeprscan /usr/lib/jvm/${VERSION}/bin/jdeprscan ${PRIORITY}
sudo update-alternatives --install /usr/bin/jdeps jdeps /usr/lib/jvm/${VERSION}/bin/jdeps ${PRIORITY}
sudo update-alternatives --install /usr/bin/jhsdb jhsdb /usr/lib/jvm/${VERSION}/bin/jhsdb ${PRIORITY}
sudo update-alternatives --install /usr/bin/jimage jimage /usr/lib/jvm/${VERSION}/bin/jimage ${PRIORITY}
sudo update-alternatives --install /usr/bin/jinfo jinfo /usr/lib/jvm/${VERSION}/bin/jinfo ${PRIORITY}
sudo update-alternatives --install /usr/bin/jlink jlink /usr/lib/jvm/${VERSION}/bin/jlink ${PRIORITY}
sudo update-alternatives --install /usr/bin/jmap jmap /usr/lib/jvm/${VERSION}/bin/jmap ${PRIORITY}
sudo update-alternatives --install /usr/bin/jmod jmod /usr/lib/jvm/${VERSION}/bin/jmod ${PRIORITY}
sudo update-alternatives --install /usr/bin/jps jps /usr/lib/jvm/${VERSION}/bin/jps ${PRIORITY}
sudo update-alternatives --install /usr/bin/jrunscript jrunscript /usr/lib/jvm/${VERSION}/bin/jrunscript ${PRIORITY}
sudo update-alternatives --install /usr/bin/jshell jshell /usr/lib/jvm/${VERSION}/bin/jshell ${PRIORITY}
sudo update-alternatives --install /usr/bin/jstack jstack /usr/lib/jvm/${VERSION}/bin/jstack ${PRIORITY}
sudo update-alternatives --install /usr/bin/jstat jstat /usr/lib/jvm/${VERSION}/bin/jstat ${PRIORITY}
sudo update-alternatives --install /usr/bin/jstatd jstatd /usr/lib/jvm/${VERSION}/bin/jstatd ${PRIORITY}
sudo update-alternatives --install /usr/bin/keytool keytool /usr/lib/jvm/${VERSION}/bin/keytool ${PRIORITY}
sudo update-alternatives --install /usr/bin/rmiregistry rmiregistry /usr/lib/jvm/${VERSION}/bin/rmiregistry ${PRIORITY}
sudo update-alternatives --install /usr/bin/serialver serialver /usr/lib/jvm/${VERSION}/bin/serialver ${PRIORITY}

update-alternatives --display java
update-alternatives --display javac

java -version
javac -version