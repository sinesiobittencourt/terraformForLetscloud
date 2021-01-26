resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.instance_type
  #count = var.nunberOfInstance == "dev" ? 2 : 1
  count = var.nunberOfInstance == "dev" ? 3 : 1

  tags = {
   #Name        = "Server - ${count.index + 1}"
    Name        = "${element(var.name, count.index)}${count.index + 1}"
    Environment = var.env
    Provisioner = "Terraform"
  }
}