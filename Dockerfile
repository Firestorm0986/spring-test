# syntax=docker/dockerfile:1
FROM eclipse-temurin:20.0.2_9-alpine
WORKDIR /app
RUN apk update && apk upgrade && \
    apk add --no-cache git 
COPY . /app
RUN ./mvnw package
CMD ["java", "-jar", "target/spring-0.0.1-SNAPSHOT.jar"]
EXPOSE 8085
