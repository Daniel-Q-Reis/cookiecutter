#!/bin/bash

# Switch to local development settings
echo "Switching to local development settings..."

# Backup the current development.py file
cp {{ cookiecutter.project_slug }}/settings/development.py {{ cookiecutter.project_slug }}/settings/development.py.docker.bak

# Update the development.py file to use localhost instead of 'db' for PostgreSQL
sed -i "s/'HOST': 'db'/'HOST': 'localhost'/g" {{ cookiecutter.project_slug }}/settings/development.py

echo "Successfully switched to local development settings."
echo "To switch back to Docker settings, run scripts/use_docker_settings.sh"