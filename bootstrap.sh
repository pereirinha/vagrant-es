#!/usr/bin/env bash
sudo apt-get update
sudo apt-get -y upgrade


# install openjdk-7
sudo apt-get install -y openjdk-7-jre-headless

# install ES
wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.2.1/elasticsearch-2.2.1.deb
sudo dpkg -i elasticsearch-2.2.1.deb
rm elasticsearch*

# Allow ES to be accessed by host
sudo echo "network.host: 0.0.0.0" >> /etc/elasticsearch/elasticsearch.yml

# Start ES
sudo /etc/init.d/elasticsearch restart