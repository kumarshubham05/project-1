FROM centos:latest
RUN yum install -y httpd \
    zip   \
   unzip
ADD http://www.free-css-templates.com/downloads/243/BrownShadow.zip /var/www/html
WORKDIR /var/www/html
RUN unzip BrownShadow.zip
CMD apachectl -D FOREGROUND
EXPOSE 80
