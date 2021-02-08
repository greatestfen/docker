FROM tomcat:8.0-alpine

ADD sample.war /usr/local/tomcat/webapps/
ADD Lab6A.war /usr/loca/tomcat/webapps/
ADD ./conf/tomcat-users.xml /usr/local/tomcat/conf/

EXPOSE 8080
CMD ["catalina.sh", "run"]