terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


resource "aws_instance" "EC2" {
  ami           = var.aws_ami
  instance_type = var.instance_type

  tags = {
    Name        = "EC2 created by Maycon Modificado"
    Environment = var.environment
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Project    = "Terraform setup"
      CreatedAlt = "2023-12-04"
      ManagedBy  = "Terraform"
      Owner      = "Maycon Lemos"
    }
  }
}



