terraform {
  backend "s3" {
    bucket = "jenkins-terraform-statefile-001"
    key    = "jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}