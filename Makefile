# Define variables
DOCKER_USERNAME=abdullaharif24
IMAGE_NAME=mlops_task2  # Ensure lowercase
TAG=latest

# Build Docker image using Buildx
build:
	@docker buildx build --tag $(DOCKER_USERNAME)/$(IMAGE_NAME):$(TAG) --push .

# Push Docker image to Docker Hub (optional if already pushed during buildx)
push:
	@docker push $(DOCKER_USERNAME)/$(IMAGE_NAME):$(TAG)

# Combined build and push
deploy: build
