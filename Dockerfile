FROM tomcat:8.0-alpine

RUN mkdir -p /usr/local/tomcat/webapps/sample/
ADD sample.war /usr/local/tomcat/webapps/sample/
ADD ./conf/tomcat-users.xml /usr/local/tomcat/conf/

EXPOSE 8080
CMD ["catalina.sh", "run"]