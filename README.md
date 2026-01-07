# maven-bb-pipeline-image

A Docker image based on Maven 3.9.12 with Eclipse Temurin 21 JDK, enhanced with additional tools for Bitbucket Pipelines workflows.

## Description

This repository contains a Dockerfile that builds upon the official `maven:3.9.12-eclipse-temurin-21` image and adds essential development tools. The image is designed for use in CI/CD pipelines, particularly Bitbucket Pipelines.

## Included Tools

- **Maven 3.9.12**: Build automation and dependency management
- **Eclipse Temurin 21**: Production-ready OpenJDK distribution
- **Git**: Version control system
- **Python 3**: Programming language with pip package manager

Additional tools will be added in the future to support various development workflows.

## Usage

### Pull from GitHub Container Registry

```bash
docker pull ghcr.io/gems/maven-bb-pipeline-image:latest
```

### Run the Container

```bash
docker run -it ghcr.io/gems/maven-bb-pipeline-image:latest bash
```

### Use in Bitbucket Pipelines

```yaml
image: ghcr.io/gems/maven-bb-pipeline-image:latest

pipelines:
  default:
    - step:
        name: Build and Test
        script:
          - mvn clean install
```

## Building Locally

To build the Docker image locally:

```bash
docker build -t maven-bb-pipeline-image .
```

## CI/CD

The Docker image is automatically built and published to GitHub Container Registry (ghcr.io/gems) on every push to the `main` branch.

## License

See [LICENSE](LICENSE) file for details.
