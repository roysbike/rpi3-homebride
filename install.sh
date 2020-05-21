#!/bin/bash


echo "1. Install Docker"
curl -sSL https://get.docker.com | sh

echo "2. Add permission to Pi User to run Docker Commands"
sudo usermod -aG docker pi


echo "3. Test Docker installation"
docker run hello-world

echo "4. IMPORTANT! Install proper dependencies"
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3 python3-pip
sudo apt-get remove python-configparser

echo "5. Install Docker Compose"
sudo pip3 install docker-compose

wget https://raw.githubusercontent.com/roysbike/rpi3-homebride/master/docker-compose.yml
