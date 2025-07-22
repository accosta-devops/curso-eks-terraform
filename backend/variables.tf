variable "region" {
  type    = string
  default = "us-east-1"
}

variable "tags" {
  type = map(string)
  default = {
    Project     = "not-so-simple-ecommerce"
    Environment = "PROD"
  }
  description = "description"
}

variable "remote_backend" {
  type = object({
    bucket = string
  })

  default = {
    bucket = "nsse-tf-state"
  }
  description = "description"
}





