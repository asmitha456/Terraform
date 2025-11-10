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

variable "path_to_private_key"{
  default="myfirstkey"
}
variable "path_to_public_key"{
  default="myfirstkey.pub"
}
#Generate a key pair usig ssh-keygen -f myfirstkey
#Connect using prive key ssh -i myfirstkey ubuntu@public-ip of launched instance
