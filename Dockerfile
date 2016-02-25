# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER djh2020

# Update the repository sources list
RUN apt-get update

#Install locate package
RUN apt-get install -y mlocate

#Install curl package
RUN apt-get install -y curl

#Install apache2 package
RUN apt-get install -y apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

