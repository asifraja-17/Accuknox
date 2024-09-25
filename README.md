Project Title: Wisecow Application Deployment and Health Monitoring


Overview
This project encompasses two primary assignments aimed at enhancing system management and application deployment:
Containerization and Deployment of the Wisecow Application: This involves creating a Docker container for the Wisecow application, deploying it on a Kubernetes environment, and ensuring secure communication via TLS. Additionally, a CI/CD pipeline using GitHub Actions is implemented for automated builds and deployments.
System Health Monitoring and Application Health Checker Scripts: This project includes two Bash scripts designed for monitoring the health of a Linux system and checking the uptime of a web application. The system health monitor checks CPU usage, memory usage, disk space, and running processes, while the application health checker verifies the application's HTTP status.



Objectives

1. Containerization and Deployment of Wisecow Application
Dockerization: Develop a Dockerfile to create a container image for the Wisecow application.
Kubernetes Deployment: Create Kubernetes manifest files for deploying the application and exposing it as a service.
CI/CD Implementation: Set up a GitHub Actions workflow for automating the build and push of the Docker image, along with continuous deployment.
TLS Communication: Ensure secure TLS communication for the deployed application.

2. System Health Monitoring Script
Monitor critical system metrics such as CPU usage, memory usage, disk space, and running processes.
Send alerts when metrics exceed predefined thresholds.

3. Application Health Checker Script
Check the uptime of a specified web application by assessing HTTP status codes.
Determine if the application is "UP" or "DOWN" based on the responses received.


Usage
Wisecow Application: Follow the setup instructions to deploy the application on Kubernetes and access it securely.
Health Monitoring Scripts: Make the scripts executable and run them to monitor system and application health, ensuring optimal performance and availability.


Prerequisites
Ensure you have Docker, Kubernetes, and GitHub Actions configured for the deployment of the Wisecow application.
For the health monitoring scripts, ensure the necessary commands are available in your Linux environment.


Conclusion
This project aims to streamline the deployment process of applications using containerization and Kubernetes while ensuring system health is continuously monitored. The scripts provide crucial insights into system performance and application uptime, enabling proactive management.

