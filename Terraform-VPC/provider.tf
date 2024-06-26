terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.1"
    }
  }

  backend "s3" {
    bucket         = "terraform-remote-backend-s3-githubactions"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table-ASG"
  }
}

provider "aws" {
  region = "us-east-1"
}


