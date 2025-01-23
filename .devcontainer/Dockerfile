# Use a Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /workspace

# Install the dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Set the entrypoint to your setup script
COPY setup.sh .
RUN chmod +x setup.sh
RUN ./setup.sh