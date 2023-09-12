FROM bellsoft/liberica-openjdk-alpine-musl:17

VOLUME /tmp
COPY target/spring-mvn-githubactions-docker-template-1.0-SNAPSHOT.jar spring-mvn-githubactions-docker-template-1.0-SNAPSHOT.jar
EXPOSE 4567
ENTRYPOINT ["java", "-jar", "spring-mvn-githubactions-docker-template-1.0-SNAPSHOT.jar"]