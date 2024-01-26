git_pull:
	git pull

set_env:
	export PLATFORM=$(uname -m)
	export HOST=$(hostname)

compile:
	CGO_ENABLED=0 GOOS=linux go build -o bin/snippetbox ./cmd/web
# Stop docker containers
docker_down:
	docker-compose down
# Build and start docker containers
docker_up:
	docker-compose up -d --build
# Default target
all: git_pull set_env compile docker_down docker_up
