# First stage: build the JAR using Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app

# Copy Maven project files
COPY pom.xml .
COPY src ./src

# Package the application
RUN mvn clean package -DskipTests

# Second stage: run the app
FROM eclipse-temurin:17

WORKDIR /app

# Copy built JAR from previous stage
COPY --from=build /app/target/employee-directory.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
