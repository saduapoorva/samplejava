# Use a base image with Java pre-installed
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
COPY build/libs/java-app-1.0-SNAPSHOT.jar app.jar

# Expose the port your application listens on
EXPOSE 8080

# Define the entry point for the container
CMD ["java", "-jar", "app.jar"]