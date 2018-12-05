#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install gcc python-dev 
#libkrb5-dev
sudo apt-get -y install python-pip
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv
#pip install pywinrm[kerberos]
#sudo apt-get -y install krb5-user
#sudo pip install kerberos
sudo pip install ansible
sudo apt-get -y install docker.io
sudo pip install docker-py
mkdir awx-install
cd awx-install
git clone https://github.com/ansible/awx.git
git clone https://github.com/ansible/awx-logos.git
cd awx
cd installer
#modify installer file for alternative DNS

sed -i 's/host_port=80/host_port=127.0.0.1:8000/g' inventory
sed -i 's/#awx_alternate_dns_servers="10.1.2.3,10.2.3.4"/awx_alternate_dns_servers="172.25.192.22,172.24.69.45"/g' inventory
sed -i 's/tmp\/pgdocker/home\/awx\/pgdocker/g' inventory

sudo cp -r /usr/local/lib/python2.7/dist-packages/backports/ssl_match_hostname/ /usr/lib/python2.7/dist-packages/backports


sudo ansible-playbook -i inventory install.yml
