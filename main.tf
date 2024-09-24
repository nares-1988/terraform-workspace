provider "aws" {
  region = "us-east-1"
}

module "ec2-create" {
    source = "./modules/ec2-instance"
    ami = var.ami
    instance_type = lookup(var.instance_type,terraform.workspace, "t2.micro")
    tag_name = var.tag_name
}