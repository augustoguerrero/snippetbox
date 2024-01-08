# Pull the latest code
git_pull:
    git pull

# Stop docker containers
docker_down:
    docker-compose down

# Build and start docker containers
docker_up: docker_down
    docker-compose up -d --build

# Print the date
date:
    date

# Default target
all: git_pull docker_up date
