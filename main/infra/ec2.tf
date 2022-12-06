
resource "aws_instance" "web" {
  ami           = "ami-0b7101e993ea27f3a"
  instance_type = var.instance_type

  tags = {
    Name= "${var.environment} : EC2 created by Maycon"
    Env= var.environment
    Type= var.instance_type
   }
}