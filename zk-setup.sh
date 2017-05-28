#!/bin/sh

sudo su -
apt-get update
apt-get -y install openjdk-8-jdk openjdk-8-jre-headless

mkdir /data
wget http://apache.claz.org/zookeeper/zookeeper-3.4.10/zookeeper-3.4.10.tar.gz
tar xvfz zookeeper-3.4.10.tar.gz
mv zookeeper-3.4.10 zk
cd zk
cp conf/zoo_sample.cfg conf/zoo.cfg
bin/zkServer.sh start
echo stat | nc 127.0.0.1 2181
