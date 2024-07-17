FROM openjdk:21-jdk-slim

# Crear un directorio para los certificados
RUN mkdir -p /etc/ssl/mycerts

# Copiar los certificados al contenedor
COPY ./keystore.p12 /etc/ssl/mycerts/

# # Copiar los certificados al contenedor
# COPY /etc/ssl/mycerts/kiryluk.app_private_key.key /etc/ssl/mycerts/
# COPY /etc/ssl/mycerts/kiryluk.app_ssl_certificate.cer /etc/ssl/mycerts/
# COPY /etc/ssl/mycerts/kiryluk.app_ssl_certificate_INTERMEDIATE.cer /etc/ssl/mycerts/
#
# # Crear el archivo PKCS12 dentro del contenedor
# RUN openssl pkcs12 -export \
#     -in /etc/ssl/mycerts/kiryluk.app_ssl_certificate.cer \
#     -inkey /etc/ssl/mycerts/kiryluk.app_private_key.key \
#     -certfile /etc/ssl/mycerts/kiryluk.app_ssl_certificate_INTERMEDIATE.cer \
#     -out /etc/ssl/mycerts/keystore.p12 \
#     -name kirylukAlias \
#     -passout pass:colo

# Asegurar los permisos correctos para el archivo PKCS12
RUN chown root:root /etc/ssl/mycerts/keystore.p12 && \
    chmod 600 /etc/ssl/mycerts/keystore.p12

# Copy the jar file to the container
COPY /build/libs/teamsmanagement-0.0.1-SNAPSHOT.jar teamsmanagement.jar

#COPY --from=build /app/build/libs/*.jar app.jar

# Run the jar file
ENTRYPOINT ["sh", "-c", "java -jar teamsmanagement.jar"]
