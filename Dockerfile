# Use an official Maven runtime as the base image
FROM maven:3.8.4-jdk-11

# Set the working directory in the container
WORKDIR /app

# Copy the POM file and the rest of the code
COPY ./pom.xml ./ 

# Build the application
RUN mvn clean package

# Specify the command to run your application
CMD ["java", "-jar", "target/devops-demo-1.0-SNAPSHOT.jar"]
