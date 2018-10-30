docker exec -i -t awx_task "sudo apt-get -y install krb5-workstation, krb5-devel, krb5-libs, gcc, python-devel"
docker exec -i -t awx_task "sudo pip install kerberos"