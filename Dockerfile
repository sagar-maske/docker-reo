FROM ubuntu:18.04
RUN apt-get update -y && apt-get install apache2 -y
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN service apache2 restart
COPY /mnt/project1/velocity-app/index.html /www/var/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apachectl/","-DFORGROUND"]
