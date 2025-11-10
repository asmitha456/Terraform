variable "aws-instance"{
    instance_type="t3.micro"
}

varible "ami"{
 ami=""
}

variable "aws_region"{    
    default="us-east-1"
}

variable "path_to_private_key"{
    default="vpckeypair"
}

variable "path_to_public_key"{
    default="vpckeypair.pub"
}
