#!/bin/bash

# Our developer will choose their own environment name
read -p "Enter a name for the virtual environment, e.g. 'venv', 'test-venv', 'dev-venv': " venv_name

# Create the virtual environment with the name provided
python3 -m venv "$venv_name"

# Activate the virtual environment
source "$venv_name/bin/activate"

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Confirm a successful setup
echo "Virtual environment '$venv_name' has been set up and the dependencies installed"
