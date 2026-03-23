#!/bin/bash

# Check if git is installed
if ! command -v git &> /dev/null
then
    echo "git could not be found. Please install git."
    exit 1
fi

# Check if docker is installed
if ! command -v docker &> /dev/null
then
    echo "docker could not be found. Please install docker."
    exit 1
fi

echo "All required dependencies (git, docker) are installed."
