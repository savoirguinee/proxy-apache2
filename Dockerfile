FROM debian:10.8

RUN apt-get update --fix-missing   

RUN apt-get -y  install nano  apache2  curl git supervisor libapache2-mod-wsgi --fix-missing 

COPY web-1/ /var/www/html

EXPOSE 80
EXPOSE 443

CMD apachectl -D FOREGROUND