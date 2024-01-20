# Pull the latest code
git_pull:
	git pull
# Stop docker containers
docker_down: docker_down
	docker-compose down
# set the architecture
set_arch:
	./scripts/setarch.sh
# Build and start docker containers
docker_up: docker_up
	docker-compose up -d --build
# Print the date
date:
	date
# Default target
all: set_arch git_pull docker_down docker_up date
