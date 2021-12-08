#!/bin/bash
#add fix to exercise5-server1 here
ssh-keygen -q -t rsa -N '' -f /home/vagrant/.ssh/id_rsa <<<y 2>&1 >/dev/null
sudo chown -R vagrant.vagrant /home/vagrant/.ssh/
#sudo chmod -R 600 /home/vagrant/.ssh/
echo "StrictHostKeyChecking no" | sudo tee -a /etc/ssh/ssh_config
sudo sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config
sudo service sshd restart
#ssh-keygen -q -t rsa -N '' -f /home/vagrant/.ssh/id_rsa <<<y 2>&1 >/dev/null
