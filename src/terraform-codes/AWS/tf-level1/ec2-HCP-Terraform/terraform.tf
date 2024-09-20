terraform {
  cloud {
    organization = "amcorrea-test-tf"
    workspaces {
      name = "learn-terraform-aws"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}