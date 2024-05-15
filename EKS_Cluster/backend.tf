terraform {
  backend "s3" {
    bucket = "jenkins-terraform-statefile-001"
    key    = "EKS/terraform.tfstate"
    region = "ap-south-1"
  }
}