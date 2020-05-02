FROM maven:3-jdk-11-openj9 as build

WORKDIR /
VOLUME /tmp

ADD . .
RUN mvn clean package

FROM openjdk:11

VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY --from=build ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]