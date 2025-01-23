#!/bin/bash

# Prompt the user to input a name for their virtual environment
read -p "Enter a name for the virtual environment (e.g., 'venv', 'dev-venv'): " venv_name

# Create the virtual environment with the name provided
python3 -m venv "$venv_name"

# Confirm a successful venv creation
echo "Virtual environment has been created: '$venv_name'"

# Automatically activate the virtual environment
# Note: Activation works only within the current shell, so instead of activating it for the user,
# we directly run pip install within the script.

# Install dependencies from requirements.txt
source "$venv_name/bin/activate" && pip install -r requirements.txt

# Confirm successful installation
echo "Dependencies have been installed in the virtual environment: '$venv_name'"

# Optional: Inform the user how to activate the venv if needed in the future
echo "To activate the virtual environment in the future, run: source $venv_name/bin/activate"
