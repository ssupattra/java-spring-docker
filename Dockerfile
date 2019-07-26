FROM tomcat:jdk8
MAINTAINER s_supattra@yahoo.com
RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
ADD ./target/my-java-app-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
