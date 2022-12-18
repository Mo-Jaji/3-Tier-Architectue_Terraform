terraform {
  required_version = "~> 2.0.0" 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
     null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
  }
}
}

provider "aws" {
  region = var.my_aws_region
}