FROM maven:3.9.12-amazoncorretto-21

# Install git and python3 with pip using yum
RUN yum install -y git python3 python3-pip && \
    yum clean all && \
    rm -rf /var/cache/yum

# Verify installations
RUN mvn --version && \
    git --version && \
    python3 --version && \
    pip3 --version
