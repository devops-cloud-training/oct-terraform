terraform {
  required_version = "~> 1.5.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "sathish-devops-bucket"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "state-lock"
  }
}

provider "aws" {
  region = var.aws_region
}