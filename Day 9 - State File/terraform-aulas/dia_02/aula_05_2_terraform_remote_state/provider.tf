
terraform {
  backend "s3" {
    bucket = "devops-professional-jx"
    key    = "aula_output_e_terraform_remote_state"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}


