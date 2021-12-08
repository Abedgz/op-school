#!/bin/bash
#add fix to exercise4-server2 here
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo service sshd restart

sudo apt-get update -y
sudo apt-get install -y sshpass

