FROM tomcat:8.0-alpine
LABEL maintainer="skrcloudseva@gmail.com"

ADD my_java_war/sample_app.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD["catalina.sh", "run"]
