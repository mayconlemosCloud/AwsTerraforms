terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


resource "aws_instance" "web" {
  ami           = "ami-0886a3d2c8b721217"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 created by Maycon"
  }
}

provider "aws" {
  region = "sa-east-1"
  default_tags {
    tags = {
      Project    = "Terraform setup"
      CreatedAlt = "2023-12-04"
      ManagedBy  = "Terraform"
      Owner      = "Maycon Lemos"
    }
  }
}



