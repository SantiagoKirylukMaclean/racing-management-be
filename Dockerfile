#FROM gradle:8-jdk21 as build
#
#WORKDIR /app
#
## Copiar los archivos de Gradle y el archivo de configuración de Gradle
#COPY build.gradle.kts /app/
#COPY settings.gradle.kts /app/
#
#COPY src /app/src
#
## Realizar la construcción de la aplicación
#RUN gradle build --no-daemon

FROM openjdk:21-jdk-slim

#WORKDIR /app

# Copy the jar file to the container
COPY /build/libs/teamsmanagement-0.0.1-SNAPSHOT.jar teamsmanagement.jar

#COPY --from=build /app/build/libs/*.jar app.jar

# Run the jar file
ENTRYPOINT ["sh", "-c", "java -jar teamsmanagement.jar"]
