#!/bin/sh

# The name of the Docker image to build
NAME=php-websocket-server

# The version of the Docker image to build
VERSION=1.0.0

# Build the Docker image
docker build --no-cache -t gomoob/$NAME:$VERSION .

# Create a tag for the Docker image
docker tag gomoob/$NAME:$VERSION gomoob/$NAME:$VERSION

# Publish the Docker image to the GOMOOB private Docker registry
docker push gomoob/$NAME
