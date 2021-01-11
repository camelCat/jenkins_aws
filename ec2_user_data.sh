#!/bin/bash -x
sudo perl -pi -e 's/^#?Port 22$/Port 443/' /etc/ssh/sshd_config
sudo service sshd restart
service ssd restart

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo su
echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install openjdk-8-jre -y
sudo apt-get install jenkins -y
echo "done"