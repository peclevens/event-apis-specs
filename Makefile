# Project variables
CONTAINER_NAME ?= event-apis-docs
PORT ?= 8082
VERSION ?= 1.0.0

# Make stages
.PHONY: build release clean

# Build stage
build:
	${INFO} "Creating build image..."
	@ docker build -t $(CONTAINER_NAME):$(VERSION) .
	${INFO} "Build completed."

# Release stage
release:
	${INFO} "Creating container image..."
	@ docker run --name $(CONTAINER_NAME) -p $(PORT):8080 -d $(CONTAINER_NAME):$(VERSION)
	${INFO} "Container $(CONTAINER_NAME) version $(VERSION) is running on port $(PORT)."

# Clean stage
clean:
	${INFO} "Stopping container..."
	@ docker stop $(CONTAINER_NAME)
	${INFO} "Destroying container image..."
	@ docker rm $(CONTAINER_NAME)
	@ docker rmi $(CONTAINER_NAME):$(VERSION)
	${INFO} "Clean completed."

# Colors
YELLOW := "\e[1;33m"
NC := "\e[0m"

# Shell Functions
INFO := @bash -c '\
		printf $(YELLOW); \
		echo "=> $$1"; \
		printf $(NC)' VALUE
