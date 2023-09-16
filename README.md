# Kotlin Spring Boot Kubernetes Template

This project serves as a starting point to create a Kubernetes-ready Spring Boot application written in Kotlin using Gradle and JDK 17.

## Project Overview

- Spring Boot 3 application written in Kotlin
- Built using Gradle 7+
- Requires JDK 17+
- Deploys to a Kubernetes cluster
- Dockerfile provided to containerize application
- Kubernetes manifests include Deployment and Service
- Utilizes Spring Boot Actuator for healthchecks

## Getting Started

### Prerequisites

- JDK 17+
- Gradle 7+
- Docker
- Access to a Kubernetes cluster

### Building

Build the JAR file:

```
./gradlew build
```

### Containerization

Build Docker image:

```
./gradlew jibDockerBuild
```

### Kubernetes Deployment

Deploy to Kubernetes:

```
kubectl apply -f k8s/
```

The app can now be accessed via the exposed Kubernetes service.

## Contributing

Pull requests are welcome. Please follow code style guidelines and test your changes before submitting.

## License

This project is licensed under the MIT license - see [LICENSE](LICENSE) for details.