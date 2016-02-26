FROM centos:6

RUN yum update && yum clean all && yum install -y \
mlocate \
curl \
httpd \
&& updatedb


COPY html/ /var/www/html/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
