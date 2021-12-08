#!/bin/bash
#add fix to exercise3 here

sudo sed -i 's/127.0.2.1/192.168.100.10/' /etc/hosts
for var in {1..3} 
do
	sudo sed -i '$ d' /etc/apache2/sites-enabled/000-default.conf
done

`sudo service apache2 restart`

