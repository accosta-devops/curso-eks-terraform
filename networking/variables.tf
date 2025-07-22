variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc" {
  type = object({
    cidr_block           = string
    name                 = string
    aws_internet_gateway = string
  })

  default = {
    cidr_block           = "10.0.0.0/24"
    name                 = "nsse-vpc"
    aws_internet_gateway = "nsse-internet-gateway"
  }
  description = "description"
}
