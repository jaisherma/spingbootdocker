FROM openjdk:8
ADD target/MyFirstDockerApplication-0.0.1-SNAPSHOT.jar MyFirstDockerApplication.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "MyFirstDockerApplication.jar"]