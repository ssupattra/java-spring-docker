# java-spring-docker
This is a java web application to create/update events in MySQL and provide data to other system by using REST API. It will deploy to AWS beanstalk using docker and travis. The other system to retrieve data from this system is https://github.com/ssupattra/php-slim-guzzle-docker.

## Technology
Spring Boot, Hibernate, Java, MySQL, Docker, REST API provider

## Installation
1. Install MySQL in local machine
2. Download this code
3. Add environment constants (MY_SQL_HOST, MY_SQL_USER, MY_SQL_PASSWORD, MY_SQL_PORT, MY_SQL_DATABASE) when build to war (from Eclipse - click at project > run as > Maven build.. > 'clean install', add these environment constants)
4. In Dockerfile, war file is under 'target' directory (./target/my-java-app-0.0.1-SNAPSHOT.war)
5. Update environment constants and volumes in mysqldev section in docker-compose-dev.yml for database configuration, change docker-compose-dev.yml to docker-compose.yml
6. Run in local machine - 'docker-compose up --build'
7. open browser with http://localhost:8080

### AWS Setup
1. Set up web server by using aws beanstalk > create a web server environment, Platform: docker
2. Set up mysql by using aws beanstalk > config > database > create mysql
3. Add mysql configuration to aws beanstalk > modify software - environment and add constants eg.
```SPRING_JPA_DATABASE_PLATFORM=org.hibernate.dialect.MySQL5Dialect
JDBC_CONNECTION_STRING=jdbc:mysql://xxx@xxx (mysql link)
MY_SQL_DATABASE=xxx
MY_SQL_HOST=xxx
MY_SQL_PASSWORD=xxx
MY_SQL_USER=xxx
```
4. Update aws configuration to .travis.yml eg. aws bucket name
5. Travis with .travis.yml will build docker image (from Dockerfile) and upload to docker hub, then deploy to AWS beanstalk



