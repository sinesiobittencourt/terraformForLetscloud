resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.instance_type
  count = var.numberVPC

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terraform"
  }
}