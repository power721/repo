#!/usr/bin/env bash

wget -O /tmp/jdk8.tgz https://github.com/power721/repo/releases/download/JDK/jdk-8u321-linux-x64.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar xf /tmp/jdk8.tgz -C /usr/lib/jvm
VERSION=jdk1.8.0_212
PRIORITY=100
sudo chown -R root:root /usr/lib/jvm/${VERSION}
sudo update-alternatives --install /usr/bin/appletviewer appletviewer /usr/lib/jvm/${VERSION}/bin/appletviewer ${PRIORITY}
sudo update-alternatives --install /usr/bin/extcheck extcheck /usr/lib/jvm/${VERSION}/bin/extcheck ${PRIORITY}
sudo update-alternatives --install /usr/bin/idlj idlj /usr/lib/jvm/${VERSION}/bin/idlj ${PRIORITY}
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/${VERSION}/bin/jar ${PRIORITY}
sudo update-alternatives --install /usr/bin/jarsigner jarsigner /usr/lib/jvm/${VERSION}/bin/jarsigner ${PRIORITY}
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/${VERSION}/jre/bin/java ${PRIORITY}
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/${VERSION}/bin/javac ${PRIORITY}
sudo update-alternatives --install /usr/bin/javadoc javadoc /usr/lib/jvm/${VERSION}/bin/javadoc ${PRIORITY}
sudo update-alternatives --install /usr/bin/javafxpackager javafxpackager /usr/lib/jvm/${VERSION}/bin/javafxpackager ${PRIORITY}
sudo update-alternatives --install /usr/bin/javah javah /usr/lib/jvm/${VERSION}/bin/javah ${PRIORITY}
sudo update-alternatives --install /usr/bin/javap javap /usr/lib/jvm/${VERSION}/bin/javap ${PRIORITY}
sudo update-alternatives --install /usr/bin/javapackager javapackager /usr/lib/jvm/${VERSION}/bin/javapackager ${PRIORITY}
sudo update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/${VERSION}/bin/javaws ${PRIORITY}
sudo update-alternatives --install /usr/bin/jcmd jcmd /usr/lib/jvm/${VERSION}/bin/jcmd ${PRIORITY}
sudo update-alternatives --install /usr/bin/jconsole jconsole /usr/lib/jvm/${VERSION}/bin/jconsole ${PRIORITY}
sudo update-alternatives --install /usr/bin/jcontrol jcontrol /usr/lib/jvm/${VERSION}/bin/jcontrol ${PRIORITY}
sudo update-alternatives --install /usr/bin/jdb jdb /usr/lib/jvm/${VERSION}/bin/jdb ${PRIORITY}
sudo update-alternatives --install /usr/bin/jdeps jdeps /usr/lib/jvm/${VERSION}/bin/jdeps ${PRIORITY}
sudo update-alternatives --install /usr/bin/jexec jexec /usr/lib/jvm/${VERSION}/jre/lib/jexec ${PRIORITY}
sudo update-alternatives --install /usr/bin/jhat jhat /usr/lib/jvm/${VERSION}/bin/jhat ${PRIORITY}
sudo update-alternatives --install /usr/bin/jinfo jinfo /usr/lib/jvm/${VERSION}/bin/jinfo ${PRIORITY}
sudo update-alternatives --install /usr/bin/jjs jjs /usr/lib/jvm/${VERSION}/bin/jjs ${PRIORITY}
sudo update-alternatives --install /usr/bin/jmap jmap /usr/lib/jvm/${VERSION}/bin/jmap ${PRIORITY}
sudo update-alternatives --install /usr/bin/jmc jmc /usr/lib/jvm/${VERSION}/bin/jmc ${PRIORITY}
sudo update-alternatives --install /usr/bin/jps jps /usr/lib/jvm/${VERSION}/bin/jps ${PRIORITY}
sudo update-alternatives --install /usr/bin/jrunscript jrunscript /usr/lib/jvm/${VERSION}/bin/jrunscript ${PRIORITY}
sudo update-alternatives --install /usr/bin/jsadebugd jsadebugd /usr/lib/jvm/${VERSION}/bin/jsadebugd ${PRIORITY}
sudo update-alternatives --install /usr/bin/jstack jstack /usr/lib/jvm/${VERSION}/bin/jstack ${PRIORITY}
sudo update-alternatives --install /usr/bin/jstat jstat /usr/lib/jvm/${VERSION}/bin/jstat ${PRIORITY}
sudo update-alternatives --install /usr/bin/jstatd jstatd /usr/lib/jvm/${VERSION}/bin/jstatd ${PRIORITY}
sudo update-alternatives --install /usr/bin/jvisualvm jvisualvm /usr/lib/jvm/${VERSION}/bin/jvisualvm ${PRIORITY}
sudo update-alternatives --install /usr/bin/keytool keytool /usr/lib/jvm/${VERSION}/jre/bin/keytool ${PRIORITY}
sudo update-alternatives --install /usr/bin/native2ascii native2ascii /usr/lib/jvm/${VERSION}/bin/native2ascii ${PRIORITY}
sudo update-alternatives --install /usr/bin/orbd orbd /usr/lib/jvm/${VERSION}/jre/bin/orbd ${PRIORITY}
sudo update-alternatives --install /usr/bin/pack200 pack200 /usr/lib/jvm/${VERSION}/jre/bin/pack200 ${PRIORITY}
sudo update-alternatives --install /usr/bin/policytool policytool /usr/lib/jvm/${VERSION}/jre/bin/policytool ${PRIORITY}
sudo update-alternatives --install /usr/bin/rmic rmic /usr/lib/jvm/${VERSION}/bin/rmic ${PRIORITY}
sudo update-alternatives --install /usr/bin/rmid rmid /usr/lib/jvm/${VERSION}/jre/bin/rmid ${PRIORITY}
sudo update-alternatives --install /usr/bin/rmiregistry rmiregistry /usr/lib/jvm/${VERSION}/jre/bin/rmiregistry ${PRIORITY}
sudo update-alternatives --install /usr/bin/schemagen schemagen /usr/lib/jvm/${VERSION}/bin/schemagen ${PRIORITY}
sudo update-alternatives --install /usr/bin/serialver serialver /usr/lib/jvm/${VERSION}/bin/serialver ${PRIORITY}
sudo update-alternatives --install /usr/bin/servertool servertool /usr/lib/jvm/${VERSION}/jre/bin/servertool ${PRIORITY}
sudo update-alternatives --install /usr/bin/tnameserv tnameserv /usr/lib/jvm/${VERSION}/jre/bin/tnameserv ${PRIORITY}
sudo update-alternatives --install /usr/bin/unpack200 unpack200 /usr/lib/jvm/${VERSION}/jre/bin/unpack200 ${PRIORITY}
sudo update-alternatives --install /usr/bin/wsgen wsgen /usr/lib/jvm/${VERSION}/bin/wsgen ${PRIORITY}
sudo update-alternatives --install /usr/bin/wsimport wsimport /usr/lib/jvm/${VERSION}/bin/wsimport ${PRIORITY}
sudo update-alternatives --install /usr/bin/xjc xjc /usr/lib/jvm/${VERSION}/bin/xjc ${PRIORITY}

update-alternatives --display java
update-alternatives --display javac

java -version
javac -version
