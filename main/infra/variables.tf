variable "aws_region" {
  type        = string
  description = "The AWS region to deploy to"
  default     = "sa-east-1"
}

variable "aws_profile" {
  type        = string
  description = "The AWS profile to use to execute the commands"
  default     = "default"
}

variable "aws_ami" {
  type        = string
  description = "The AWS ami to use to execute the commands"
  default     = "ami-0886a3d2c8b721217"
}

variable "environment" {
  type        = string
  description = "The environment to deploy to"
  default     = "dev"
}

variable "instance_type" {
  type        = string
  description = "The instance power"
  default     = "t2.micro"
}
