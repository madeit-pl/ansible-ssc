#!/bin/bash

sudo apt-get install gcc python-dev libkrb5-dev
sudo apt-get install python-pip
sudo pip install -upgrade pip
sudo pip install -upgrade virtualenv
pip install pywinrm[kerberos]
sudo apt-get install krb5-user
sudo pip install kerberos
sudo pip install ansible