FROM openjdk:21-jdk-slim

# Copy the jar file to the container
COPY /build/libs/teamsmanagement-0.0.1-SNAPSHOT.jar teamsmanagement.jar

# Run the jar file
ENTRYPOINT ["sh", "-c", "java -jar teamsmanagement.jar"]
