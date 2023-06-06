#!/bin/bash

# Run docker-compose up
docker-compose up -d --build

# Prune unused Docker images
docker image prune -af

# Prune unused Docker containers
docker container prune -f