#!/bin/bash
#add fix to exercise4-server1 here
echo '192.168.100.11 server2' | sudo tee -a /etc/hosts
#echo "StrictHostKeyChecking no" | sudo tee -a /etc/ssh/ssh_config
#ssh-keygen -q -t rsa -N '' -f /home/vagrant/.ssh/id_rsa <<<y 2>&1 >/dev/null
#sudo sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config
#sudo service sshd restart

