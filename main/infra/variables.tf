variable "aws_region" {
    type = string
    description = "The AWS region"
    default = "eu-central-1"
  
}

variable "aws_profile" {
    type = string
    description = "The AWS Profile"
    default = "default"
}

variable "environment" {
    type = string
    description = "The AWS environment"
    default = "dev"
}

variable "instance_type" {
    type = string
    description = "The AWS instance_type"   
}