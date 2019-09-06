#!/bin/bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install unifi -y
echo "echo \"\"" >> /etc/profile
echo "echo \"Your management URL for your Unifi Controller is https://\`curl -s ipecho.net/plain; echo\`:8443\"" >> /etc/profile
echo "echo \"\"" >> /etc/profile
