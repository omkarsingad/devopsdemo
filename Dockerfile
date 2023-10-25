# Use an official Maven runtime as the base image
FROM maven:3.8.4-jdk-11

# Set the working directory in the container
WORKDIR /app

# Copy the POM file and the rest of the code
<<<<<<< HEAD
COPY ./pom.xml ./
=======
COPY ./pom.xml ./ 
>>>>>>> 3d6f1a9c5403702c3e9290e9860ab4fd2a9add4f

# Build the application
RUN mvn clean package

# Specify the command to run your application
CMD ["java", "-jar", "target/devops-demo-1.0-SNAPSHOT.jar"]
