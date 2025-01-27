# Step 1: Use a lightweight base image with Java runtime
FROM openjdk:17-jdk-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the JAR file from the host to the container
COPY target/vprofile-app.jar app.jar

# Step 4: Expose the application port (optional)
EXPOSE 5050

# Step 5: Define the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
