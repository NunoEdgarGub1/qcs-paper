COMMIT_HASH=$(shell git rev-parse --short HEAD)
DOCKER_TAG=rigetti/qcs-paper:$(COMMIT_HASH)

.PHONY: docker
docker: Dockerfile
	docker build -t $(DOCKER_TAG) .
