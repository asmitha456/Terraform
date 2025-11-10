variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
  type=string
  default="us-east-1"
}

variable "ami"{
  type=map
  default={
  us-east-1="ami-0157af9aea2eef346"
  }
}
