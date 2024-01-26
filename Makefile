git_pull:
	git pull

compile:
	CGO_ENABLED=0 GOOS=linux go build -o bin/snippetbox ./cmd/web
# Stop docker containers
docker_down:
	docker-compose down
# Build and start docker containers
docker_up:
	docker-compose up -d --build
# Default target
all: git_pull compile docker_down docker_up
