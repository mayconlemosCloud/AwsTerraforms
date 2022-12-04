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

data "aws_ami" "ubuntu" {
  owners=["amazon"]
  most_recent = true
  name_regex="Ubuntu" 
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name= "${var.environment} : EC2 created by Maycon"
    Env= var.environment
  }
}

