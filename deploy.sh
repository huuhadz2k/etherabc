#!/bin/bash
sudo apt update -y

#������ nodejs
sudo apt-get install -y build-essential
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
# ������ redis
sudo apt-get install -y redis-server
# ������ nginx
sudo apt-get install -y nginx
# ������ go
sudo apt-get install -y golang

#������ go-musicoin
sudo apt install -y docker.io
sudo apt install -y golang
git clone https://github.com/Musicoin/go-musicoin.git
cd go-musicoin
make gmc-cross
cd ..

#������ open-ethereum-pool
git clone https://github.com/boehla/open-ethereum-pool.git
cd open-ethereum-pool
make

cd www

#������ �������������� ������
sudo npm install -y -g phantomjs-prebuilt


npm install -g ember-cli
npm install -g bower
npm install
bower install
./build.sh

#������ midnight commander ��� ��������
sudo apt install -y mc

sudo apt upgrade
sudo apt autoremove -y --purge

#������� �������������
sudo useradd gmc
sudo useradd pool
