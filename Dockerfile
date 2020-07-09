# Debian Buster als Docker-Container
FROM debian:buster
MAINTAINER Lea Cotar <l.cotar@rafisa.ch>

# Installation MariaDB
RUN apt-get update && apt-get install -y mariadb-server

# Install Apache Server
RUN apt-get install -y apache2

# Install php
RUN apt-get -y install php libapache2-mod-php php-gd php-mysql

# index.php-File kopieren
COPY src/ /var/www/html

# Docker Ports im Container freigeben
EXPOSE 3306
EXPOSE 80
