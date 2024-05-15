pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        region = "ap-south-1"
    }

    stages {
        stage('git checkout SCM') {
            steps {
               git branch: 'main', url: 'https://github.com/hemanthreddy00992/Terraform-EKS-Jenkins.git'
            }
        }
        
        stage('Initialize terraform') {
            steps {
                script {
                 dir('EKS_Cluster'){
                  sh "terraform init"
                 }
                 
                }
            }
        }
        
        stage('Format the terraform files') {
            steps {
                script {
                 dir('EKS_Cluster'){
                  sh "terraform fmt"
                 }
                 
                }
            }
        }
        
        
        stage('validating terraform') {
            steps {
                script {
                 dir('EKS_Cluster'){
                  sh "terraform validate"
                 }
                 
                }
            }
        }
        
        stage('infra preview') {
            steps {
                script {
                 dir('EKS_Cluster'){
                  sh "terraform plan"
                 }
                }
            }
        }
        
        
        
        stage('Creating/Destroying EKS Cluster') {
            steps {
                script {
                 dir('EKS_Cluster'){
                  sh "terraform $action --auto-approve"
                 }
                 
                }
            }
        }
        
        
        
    }
    
}
