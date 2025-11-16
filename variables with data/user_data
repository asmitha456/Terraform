provide "aws"{
region="us-east-1"
}
resource "aws_instane" "awsServer"{
  ami="ami-0ecb62995f68bb549"
  instance_type="t3.micro"
  key_name="terra"
  security_groups=["default"]
  user_data="${file("installHttpd.sh")}"
  tags={
    name="TerraformServer"
  }
}
