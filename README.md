# ansible-ssc

<h2> Information </h2> <br/>
	Instalation steps prepared for <b>Ubuntu 18.10</b> </br>
	below procedure will install Ansible AWX using docker, configure aws_task for kerberos for local domain and set up nginx reverse 	 proxy for HTTPS access.
<h2>Instalation</h2>
	curl -L https://raw.githubusercontent.com/madeit-pl/ansible-ssc/master/01_prepareAnsibleHost.sh | bash<br/>
	curl -L https://raw.githubusercontent.com/madeit-pl/ansible-ssc/master/02_kerberosConfiguration.sh | bash<br/>
	curl -L https://raw.githubusercontent.com/madeit-pl/ansible-ssc/master/03_nginxSetup.sh | bash<br/>

<h3>ToDo</h3>
	1. DNS server updates
	2. Production tests of winrm and kerberos
