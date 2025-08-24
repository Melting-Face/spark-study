#!/bin/sh

apt-get update -y && \
apt-get install wget -y && \
  apt-get clean && \
  apt-get autoremove --purge && \
  rm -rf /var/lib/apt/lists/*

while read -r line
do
  wget "https://repo1.maven.org/maven2/$line" -P /opt/spark/jars
done < $SPARK_HOME/dependencies.txt
