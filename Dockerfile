# Stage 1: Build the application
FROM maven:3.9.9-openjdk-17 AS build
WORKDIR /app
COPY src .
RUN mvn clean package -DskipTests

# Stage 2: Run the application
FROM openjdk:21.0.2-jdk-slim
WORKDIR /app
COPY --from=build /app/target/SpringMongoProject-0.0.1-SNAPSHOT.jar demo.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "demo.jar"]
