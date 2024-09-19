# Define variables
DOCKER_USERNAME=abdullaharif24
IMAGE_NAME=mlops_task2  # Change to lowercase
TAG=latest

# Build Docker image
build:
	@docker build -t $(DOCKER_USERNAME)/$(IMAGE_NAME):$(TAG) .

# Push Docker image to Docker Hub
push:
	@docker push $(DOCKER_USERNAME)/$(IMAGE_NAME):$(TAG)

# Build and push
deploy: build push
