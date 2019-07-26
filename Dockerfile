FROM tomcat:jdk8
MAINTAINER s_supattra@yahoo.com
WORKDIR '/app'
RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
ADD app/target/my-java-app-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
