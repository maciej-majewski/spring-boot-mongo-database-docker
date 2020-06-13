FROM java:8
VOLUME /tmp
EXPOSE 8080
ADD target/spring-boot-app-2.jar spring-boot-app-2.jar
RUN sh -c 'touch /spring-boot-app-2.jar'
ENTRYPOINT ["java", "-Dspring.data.mongodb.uri=mongodb://mongo-db-2-container:27017/test", "-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-app-2.jar"]

