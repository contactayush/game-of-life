# README

## Table of Contents
1. [Project Overview](#project-overview)
2. [Prerequisites](#prerequisites)
3. [Clone Source Code](#clone-source-code)
4. [Build and Compile](#build-and-compile)
5. [Deploy to EC2](#deploy-to-ec2)
6. [AWS CodePipeline](#aws-codepipeline)
7. [Conclusion](#conclusion)

## Project Overview
This project demonstrates a continuous integration and deployment (CI/CD) pipeline using AWS services. The source code is cloned from a GitHub repository, compiled into a WAR file using AWS CodeBuild, and deployed on an AWS EC2 instance using AWS CodeDeploy. All these steps are orchestrated by AWS CodePipeline.

## Prerequisites
Before you begin, ensure you have the following:
- An AWS account with necessary permissions for CodePipeline, CodeBuild, and CodeDeploy.
- A GitHub repository containing your source code.
- An S3 bucket to store the compiled WAR file.
- An EC2 instance with the CodeDeploy agent installed and running.
- AWS CLI configured on your local machine.

## Clone Source Code
Start by cloning the source code from your GitHub repository. This will serve as the base for your project.

```bash
git clone https://github.com/contactayush/game-of-life.git
cd game-of-life
```

## Build and Compile
Use AWS CodeBuild to compile the source code into a WAR file. You need to create a `buildspec.yml` file in the root of your project directory. This file defines the build commands and settings.

Ensure your `buildspec.yml` is configured correctly for your project.

## Deploy to EC2
Use AWS CodeDeploy to deploy the compiled WAR file to your EC2 instance. The deployment process and server startup are managed by scripts referenced in the `appspec.yml` file located in the root directory of your repository.

Your `appspec.yml` file and the associated scripts (`install.sh`, `copy.sh`, `start.sh`) are provided in your repository. These scripts handle the installation of necessary software, copying the WAR file from S3 to the Tomcat deployment folder, and starting the Tomcat server.

### Referenced Scripts:
- `install.sh`: Installs all necessary software.
- `copy.sh`: Copies the WAR file from the S3 bucket to the Tomcat deployment folder.
- `start.sh`: Starts the Tomcat server.

## AWS CodePipeline
AWS CodePipeline automates the steps required to release your software changes continuously. Create a new pipeline in AWS CodePipeline and follow these steps:

1. **Source Stage**: Configure the source stage to use your GitHub repository.
2. **Build Stage**: Add a build stage and select the CodeBuild project you created earlier.
3. **Deploy Stage**: Add a deploy stage and select the CodeDeploy application and deployment group you created earlier.

This pipeline will automatically clone the source code, build the WAR file, store it in the S3 bucket, and deploy it to the EC2 instance whenever changes are pushed to the GitHub repository.

## Conclusion
By following the steps outlined in this README, you can set up a CI/CD pipeline using AWS services to automate the process of building and deploying your application. This ensures that your application is always up-to-date with the latest changes from your repository.
