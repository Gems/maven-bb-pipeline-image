FROM maven:3.9.12-amazoncorretto-21

# Install git using yum
RUN yum install -y git && \
    yum clean all && \
    rm -rf /var/cache/yum

# Verify installations
RUN mvn --version && \
    git --version
