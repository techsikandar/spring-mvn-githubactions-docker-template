FROM maven:3.6.3-openjdk-17-slim AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn -B package --file pom.xml -DskipTests

FROM openjdk:17-slim
COPY --from=build /workspace/target/*.jar spring-mvn-githubactions-docker-template-1.0-SNAPSHOT.jar
EXPOSE 4567
ENTRYPOINT ["java","-jar","spring-mvn-githubactions-docker-template-1.0-SNAPSHOT.jar"]