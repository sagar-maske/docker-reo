FROM tomcat:8

COPY gameoflife.war /usr/local/tomcat/webapps

RUN chmod -R 777 /usr/local/tomcat/webapps/gameoflife.war


ENTRYPOINT [ "catalina.sh", "run" ]
