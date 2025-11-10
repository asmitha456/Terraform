#Modules are key ingridient to writing reusable, maintainable and testable terraform code. modules in current working directory is called root module

provider "aws"{
  region=var.aws_region
}

resource "aws_instance" "module-demo"{
  ami=var.aws_ami
  instance_type="t3.micro"
}
variable "aws_region"{
}
variable "aw_ami"{
}

