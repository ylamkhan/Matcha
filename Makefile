# Define paths
FRONTEND_DIR=./Frontend
IMAGE_NAME=my-react-app
CONTAINER_NAME=react-container
PORT=3000

# Build the Docker image using docker-compose
build:
	docker-compose build

# Run the container using docker-compose
run:
	docker-compose up

# Run in detached mode
run-detached:
	docker-compose up -d

# Stop the running container
stop:
	docker-compose down

# Rebuild and restart the container
restart: stop build run

# Show running containers
ps:
	docker ps

# Clean up (Remove container & image)
clean:
	docker-compose down --rmi all --volumes --remove-orphans

# Help command
help:
	@echo "Available commands:"
	@echo "  make build          - Build the Docker image"
	@echo "  make run            - Run the container"
	@echo "  make run-detached   - Run in detached mode"
	@echo "  make stop           - Stop and remove the container"
	@echo "  make restart        - Rebuild and restart the container"
	@echo "  make ps             - Show running containers"
	@echo "  make clean          - Remove container, images, and volumes"
