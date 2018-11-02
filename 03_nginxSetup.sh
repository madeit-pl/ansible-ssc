mkdir nginx_ssl_proxy
cd nginx_ssl_proxy
openssl req -sub '/CN=wasawx01.einstein.local' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365
openssl req -subj '/CN=wasawx01.einstein.local' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365

wget https://raw.githubusercontent.com/madeit-pl/ansible-ssc/master/nginxReverseProxy.conf

docker pull nginx
docker run --name nginx_proxy -d -v `pwd`:/etc/nginx/conf.d -p 443:443  --link awx_web:awx_web nginx
