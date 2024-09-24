variable "ami" {
  description = "value of the ami"
}
variable "instance_type" {
  description = "value of the instance type"

  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t3.micro"
    "prod" = "t2.medium"    
  }
}

variable "tag_name" {
  description = "tag name"
}