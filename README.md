# Vagrant Elasticsearch
Vagrant box running Ubuntu 14.04 and Elasticsearch 5

## Pre requisits
* [Vagrant](https://www.vagrantup.com/)
* [Virtualbox](https://www.virtualbox.org/)
* 4Gb Ram — _Yeah, you'll need JDK 8 running and that alone will need about 2Gb to run._

## Install
```
git clone https://github.com/pereirinha/vagrant-es.git
```
```
cd vagrant-es
```
```
vagrant up
```

## Usage
Your host machine will have access to an Elasticsearch instance on [`192.168.60.10:9200`](http://192.168.60.10:9200)

## Caveats
On the unlikely case you are on a 192.168.60.x subnet this setup might present some conflicts.