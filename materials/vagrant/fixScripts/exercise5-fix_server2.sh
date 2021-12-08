#!/bin/bash
#add fix to exercise5-server2 here

sudo apt-get update -y
sudo apt-get install -y sshpass
echo '192.168.100.10 server1' | sudo tee -a /etc/hosts
echo 'PubkeyAuthentication yes' | sudo tee -a /etc/ssh/sshd_config
echo "StrictHostKeyChecking no" | sudo tee -a /etc/ssh/ssh_config
sudo sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config
sudo service ssh restart
sshpass -p "vagrant" scp vagrant@192.168.100.10:/home/vagrant/.ssh/id_rsa.pub /tmp/
sudo chown vagrant.vagrant /tmp/id_rsa.pub
cat /tmp/id_rsa.pub 2&>1 | tee -a /home/vagrant/.ssh/authorized_keys