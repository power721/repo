#!/usr/bin/env bash

wget -O /tmp/jdk8.tgz https://github.com/frekele/oracle-java/releases/download/8u212-b10/jdk-8u212-linux-x64.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar xf /tmp/jdk8.tgz -C /usr/lib/jvm
VERSION=jdk1.8.0_212
sudo chown -R root:root /usr/lib/jvm/${VERSION}
sudo update-alternatives --install /usr/bin/appletviewer appletviewer /usr/lib/jvm/${VERSION}/bin/appletviewer 180
sudo update-alternatives --install /usr/bin/extcheck extcheck /usr/lib/jvm/${VERSION}/bin/extcheck 180
sudo update-alternatives --install /usr/bin/idlj idlj /usr/lib/jvm/${VERSION}/bin/idlj 180
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/${VERSION}/bin/jar 180
sudo update-alternatives --install /usr/bin/jarsigner jarsigner /usr/lib/jvm/${VERSION}/bin/jarsigner 180
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/${VERSION}/jre/bin/java 180
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/${VERSION}/bin/javac 180
sudo update-alternatives --install /usr/bin/javadoc javadoc /usr/lib/jvm/${VERSION}/bin/javadoc 180
sudo update-alternatives --install /usr/bin/javafxpackager javafxpackager /usr/lib/jvm/${VERSION}/bin/javafxpackager 180
sudo update-alternatives --install /usr/bin/javah javah /usr/lib/jvm/${VERSION}/bin/javah 180
sudo update-alternatives --install /usr/bin/javap javap /usr/lib/jvm/${VERSION}/bin/javap 180
sudo update-alternatives --install /usr/bin/javapackager javapackager /usr/lib/jvm/${VERSION}/bin/javapackager 180
sudo update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/${VERSION}/bin/javaws 180
sudo update-alternatives --install /usr/bin/jcmd jcmd /usr/lib/jvm/${VERSION}/bin/jcmd 180
sudo update-alternatives --install /usr/bin/jconsole jconsole /usr/lib/jvm/${VERSION}/bin/jconsole 180
sudo update-alternatives --install /usr/bin/jcontrol jcontrol /usr/lib/jvm/${VERSION}/bin/jcontrol 180
sudo update-alternatives --install /usr/bin/jdb jdb /usr/lib/jvm/${VERSION}/bin/jdb 180
sudo update-alternatives --install /usr/bin/jdeps jdeps /usr/lib/jvm/${VERSION}/bin/jdeps 180
sudo update-alternatives --install /usr/bin/jexec jexec /usr/lib/jvm/${VERSION}/jre/lib/jexec 180
sudo update-alternatives --install /usr/bin/jhat jhat /usr/lib/jvm/${VERSION}/bin/jhat 180
sudo update-alternatives --install /usr/bin/jinfo jinfo /usr/lib/jvm/${VERSION}/bin/jinfo 180
sudo update-alternatives --install /usr/bin/jjs jjs /usr/lib/jvm/${VERSION}/bin/jjs 180
sudo update-alternatives --install /usr/bin/jmap jmap /usr/lib/jvm/${VERSION}/bin/jmap 180
sudo update-alternatives --install /usr/bin/jmc jmc /usr/lib/jvm/${VERSION}/bin/jmc 180
sudo update-alternatives --install /usr/bin/jps jps /usr/lib/jvm/${VERSION}/bin/jps 180
sudo update-alternatives --install /usr/bin/jrunscript jrunscript /usr/lib/jvm/${VERSION}/bin/jrunscript 180
sudo update-alternatives --install /usr/bin/jsadebugd jsadebugd /usr/lib/jvm/${VERSION}/bin/jsadebugd 180
sudo update-alternatives --install /usr/bin/jstack jstack /usr/lib/jvm/${VERSION}/bin/jstack 180
sudo update-alternatives --install /usr/bin/jstat jstat /usr/lib/jvm/${VERSION}/bin/jstat 180
sudo update-alternatives --install /usr/bin/jstatd jstatd /usr/lib/jvm/${VERSION}/bin/jstatd 180
sudo update-alternatives --install /usr/bin/jvisualvm jvisualvm /usr/lib/jvm/${VERSION}/bin/jvisualvm 180
sudo update-alternatives --install /usr/bin/keytool keytool /usr/lib/jvm/${VERSION}/jre/bin/keytool 180
sudo update-alternatives --install /usr/bin/native2ascii native2ascii /usr/lib/jvm/${VERSION}/bin/native2ascii 180
sudo update-alternatives --install /usr/bin/orbd orbd /usr/lib/jvm/${VERSION}/jre/bin/orbd 180
sudo update-alternatives --install /usr/bin/pack200 pack200 /usr/lib/jvm/${VERSION}/jre/bin/pack200 180
sudo update-alternatives --install /usr/bin/policytool policytool /usr/lib/jvm/${VERSION}/jre/bin/policytool 180
sudo update-alternatives --install /usr/bin/rmic rmic /usr/lib/jvm/${VERSION}/bin/rmic 180
sudo update-alternatives --install /usr/bin/rmid rmid /usr/lib/jvm/${VERSION}/jre/bin/rmid 180
sudo update-alternatives --install /usr/bin/rmiregistry rmiregistry /usr/lib/jvm/${VERSION}/jre/bin/rmiregistry 180
sudo update-alternatives --install /usr/bin/schemagen schemagen /usr/lib/jvm/${VERSION}/bin/schemagen 180
sudo update-alternatives --install /usr/bin/serialver serialver /usr/lib/jvm/${VERSION}/bin/serialver 180
sudo update-alternatives --install /usr/bin/servertool servertool /usr/lib/jvm/${VERSION}/jre/bin/servertool 180
sudo update-alternatives --install /usr/bin/tnameserv tnameserv /usr/lib/jvm/${VERSION}/jre/bin/tnameserv 180
sudo update-alternatives --install /usr/bin/unpack200 unpack200 /usr/lib/jvm/${VERSION}/jre/bin/unpack200 180
sudo update-alternatives --install /usr/bin/wsgen wsgen /usr/lib/jvm/${VERSION}/bin/wsgen 180
sudo update-alternatives --install /usr/bin/wsimport wsimport /usr/lib/jvm/${VERSION}/bin/wsimport 180
sudo update-alternatives --install /usr/bin/xjc xjc /usr/lib/jvm/${VERSION}/bin/xjc 180

update-alternatives --display java
update-alternatives --display javac

java -version
javac -version
