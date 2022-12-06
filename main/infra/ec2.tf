
resource "aws_instance" "web" {
  ami           = "ami-0886a3d2c8b721217"
  instance_type = var.instance_type

}