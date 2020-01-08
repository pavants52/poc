FROM tomcat:8

ADD /target/start-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/start-0.0.1-SNAPSHOT.jar

EXPOSE 8083
# RUN value=`cat conf/server.xml` && echo "${value//8080/90}">| conf/server.xml
CMD ["catalina.sh", "run"]
