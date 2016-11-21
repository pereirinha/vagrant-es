#!/usr/bin/env bash
sudo apt-get update
sudo apt-get upgrade

# install openjdk-8
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-8-jdk
sudo update-alternatives --config java
sudo update-alternatives --config javac

# install ES
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.0.1.deb
sudo dpkg -i elasticsearch-5.0.1.deb
rm elasticsearch*

# Allow ES to be accessed by host
sudo echo "network.host: 0.0.0.0" >> /etc/elasticsearch/elasticsearch.yml

sudo /etc/init.d/elasticsearch restart