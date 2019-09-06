#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install ca-certificates apt-transport-https
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
echo 'deb http://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg 
sudo apt update && sudo apt-get install unifi -y
sudo apt-get install git -y
sudo git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
echo "echo \"\"" >> /etc/profile
echo "echo \"Your management URL for your Unifi Controller is https://\`curl -s ipecho.net/plain; echo\`:8443\"" >> /etc/profile
echo "echo \"\"" >> /etc/profile
