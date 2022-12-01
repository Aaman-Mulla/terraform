provider "aws" {
    region = "us-east-1"
    profile = "aaman"
   
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}