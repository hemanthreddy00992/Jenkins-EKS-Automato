# Terraform-EKS-Jenkins

In this Project we will write terrraform code for eks cluster creation and using jenkins we push code to the github.


## Project Overview
This project demonstrates how to set up an Amazon Elastic Kubernetes Service (EKS) cluster using Terraform, with the deployment process automated via a Jenkins CI/CD pipeline.

### Components
EKS Cluster Code: Terraform configuration files to provision an EKS cluster on AWS.
Jenkins Server: A Jenkins server configured to run Terraform commands.
Jenkins Pipeline: A Jenkinsfile defining the pipeline stages for initializing, validating, planning, and applying the Terraform configuration.

### Prerequisites
AWS account with necessary permissions to create EKS resources.
Terraform installed locally for initial testing.
Jenkins server with required plugins (Terraform, AWS CLI, etc.).
Git repository containing the Terraform code and Jenkinsfile. ( clone this repo)

### Usage
1. clone this repo

2. cd Jenkins_server
     ( terraform init;
     terraform validate;
     terraform plan;
     terraform auto-approve )

3. login to jenkins server. <ip>:8080
4. run the jenkinsfile in inside the jenkins
5. Then your EKS cluster will be created.
