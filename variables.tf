variable "region" {
  description = "Define what region the instance will be deployed"
  default     = "us-east-1"
}

variable "name" {
  description = "Name of the Application"
  default     = "Letscloud.io-server1"
}

variable "env" {
  description = "Environment of the Application"
  default     = "prod"
}

variable "ami" {
  description = "AWS AMI to be used "
  default     = "ami-064d8dbbcc5ded164"
}

variable "instance_type" {
  description = "AWS Instance type defines the hardware configuration of the machine"
  default     = "t2.micro"
}

variable "numberVPC" {
  description = "Number VPC"
  default     = "3"

}