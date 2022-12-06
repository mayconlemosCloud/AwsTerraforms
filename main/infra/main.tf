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
  access_key = "AKIARPONYUERTFVZGSE6"
  secret_key = "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"


  default_tags {
    tags={
        Project= "Terraform GHA setup"
        CreatedAlt = "2023-12-04"
        ManagedBy="Terraform"
        Owner="Maycon Lemos"
    }
  }
}



