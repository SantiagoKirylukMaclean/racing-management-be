# Nombre del archivo: Makefile

# Variables
GRADLEW = ./gradlew

# Tareas

# Limpiar el proyecto
.PHONY: clean
clean:
	$(GRADLEW) clean

# Construir el proyecto
.PHONY: build
build:
	$(GRADLEW) build

# Ejecutar pruebas
.PHONY: test
test:
	$(GRADLEW) test

# Ejecutar la aplicación (ajusta esto según tu configuración, por ejemplo, para una aplicación Kotlin CLI)
.PHONY: run
run:
	$(GRADLEW) run

# Docker Compose: parar, construir sin cache y levantar los servicios
.PHONY: docker-rebuild
docker-rebuild:
	docker-compose down && docker-compose build --no-cache && docker-compose up

# Tarea por defecto
.PHONY: default
default: build

# Información sobre el uso
.PHONY: help
help:
	@echo "Usa 'make [tarea]' donde [tarea] es una de:"
	@echo "  clean     - Limpiar el proyecto"
	@echo "  build     - Construir el proyecto"
	@echo "  test      - Ejecutar las pruebas"
	@echo "  run       - Ejecutar la aplicación"
	@echo "  help      - Mostrar esta información de ayuda"
	@echo "  docker	   - Construir la imagen de Docker"
