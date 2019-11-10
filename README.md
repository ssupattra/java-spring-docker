# java-spring-docker
This is a java web application to create/update events in MySQL and provide data to other system by using REST API. It will deploy to AWS beanstalk using docker. The other system to retrieve data from this system is https://github.com/ssupattra/php-slim-guzzle-docker.

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

Note: use .travis.yml to build docker image (from Dockerfile) and upload to docker hub, then deploy to AWS beanstalk.


