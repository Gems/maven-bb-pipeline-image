FROM maven:3.9.12-eclipse-temurin-21

# Install git and python3 with pip using apt-get
RUN apt-get update && \
    apt-get install -y git python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Verify installations
RUN mvn --version && \
    git --version && \
    python3 --version && \
    pip3 --version
