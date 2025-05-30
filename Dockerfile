FROM maven:3.8.5-openjdk-17 AS build

WORKDIR /usr/src/myapp

COPY . .

RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=build /usr/src/myapp/target/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
