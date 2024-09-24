provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "This is AMI for the instance"
}

variable "instance_type" {
  description = "This is the instance type, for example: t2.micro"
}

variable "tag_name" {
  description = "tag name"
}

resource "aws_instance" "ws-server" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    name = "server"
    Environment = terraform.workspace
  }
  
}