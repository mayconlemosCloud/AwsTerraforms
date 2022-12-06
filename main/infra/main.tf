terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags={
        Project= "Terraform GHA setup"
        CreatedAlt = "2023-12-04"
        ManagedBy="Terraform"
        Owner="Maycon Lemos"
    }
  }
}



