# Use a base image with Java 17
FROM eclipse-temurin:17

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/employee-directory.jar app.jar

# Expose port 8080 (Render requires this port)
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "app.jar"]
