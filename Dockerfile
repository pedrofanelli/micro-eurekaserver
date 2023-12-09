#Start with a base image containing Java runtime
FROM openjdk:17-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/micro-eurekaserver-0.0.1-SNAPSHOT.jar /app/

EXPOSE 8070

# Specify the command to run on container startup
CMD ["java", "-jar", "micro-eurekaserver-0.0.1-SNAPSHOT.jar"]