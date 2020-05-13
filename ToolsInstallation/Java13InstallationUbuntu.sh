#!/bin/bash

wget https://download.java.net/openjdk/jdk13/ri/openjdk-13+33_linux-x64_bin.tar.gz
tar -xvf openjdk-13+33_linux-x64_bin.tar.gz
mv jdk-13 /opt/
tee /etc/profile.d/jdk13env.sh <<EOF
export JAVA_HOME=/opt/jdk-13
export PATH=$PATH:$JAVA_HOME/bin
EOF
source /etc/profile.d/jdk13env.sh
