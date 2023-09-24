# Use the official OpenJDK 8 base image
FROM openjdk:8

# Expose port 8080 to the outside world
EXPOSE 8080

# Set the working directory to /app
WORKDIR /app

RUN mvn package
# Copy the JAR file from your local filesystem into the container at /app/springboot-docker.jar
COPY target/springboot-docker.jar /app/springboot-docker.jar

# Define the entry point to run your Spring Boot application
ENTRYPOINT ["java", "-jar", "springboot-docker.jar"]
