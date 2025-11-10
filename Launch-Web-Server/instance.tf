resource "aws_instance" "Demo"{
  ami=""
  instance_type="t3.micro"
  vpc_security_group_ids=[aws_security_group.web-security.id]
  user_data=<<-EOF
    #!/bin/bash
    echo "you are learning Terraform, Have a good day" > index.html
    nohup busybox httpd -f -p 8080 &
    EOF
  tags={
    Name="Demo-simpleWebserver"
  }
}
