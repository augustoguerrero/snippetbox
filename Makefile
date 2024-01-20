# Stop docker containers
docker_down:
	docker-compose down
# Build and start docker containers
docker_up:
	docker-compose up -d --build
# Print the date
date:
	date
# Default target
all: git_pull docker_down docker_up date
