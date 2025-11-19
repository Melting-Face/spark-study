#!/bin/sh

apt-get update -y && \
apt-get install wget curl -y && \
  apt-get clean && \
  apt-get autoremove --purge && \
  rm -rf /var/lib/apt/lists/*

while read -r line
do
  wget "https://repo1.maven.org/maven2/$line" -P /opt/spark/jars
done < $SPARK_HOME/dependencies.txt

wget "https://s3.amazonaws.com/auxdata.johnsnowlabs.com/public/jars/spark-nlp-aarch64-assembly-6.1.2.jar" -P /opt/spark/jars

curl -LsSf https://astral.sh/uv/install.sh | sh

/root/.local/bin/uv sync --python 3.12
