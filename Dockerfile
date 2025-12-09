FROM ubuntu:latest

# Install Python (Ubuntu base image has no python by default)
RUN apt update && apt install -y python3

# Create home directory (in case it doesn't exist)
RUN mkdir -p /home

# Copy main.py from host into container
COPY main.py /home/main.py

# Set working directory
WORKDIR /home

# Run the script by default (optional)
CMD ["python3", "main.py"]
