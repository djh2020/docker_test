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
