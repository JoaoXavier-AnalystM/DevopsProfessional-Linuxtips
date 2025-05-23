terraform {
  backend "s3" {
    bucket = "devops-professional-jx"
    key    = "aula_functions_locals_count"
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
  region = "us-east-1"
}
