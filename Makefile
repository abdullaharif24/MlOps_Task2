# Define variables
DOCKER_USERNAME=<your-dockerhub-username>
IMAGE_NAME=<your-app-name>
TAG=latest

# Build Docker image
build:
	docker build -t $(DOCKER_USERNAME)/$(IMAGE_NAME):$(TAG) .

# Push Docker image to Docker Hub
push:
	docker push $(DOCKER_USERNAME)/$(IMAGE_NAME):$(TAG)

# build
deploy: build push
