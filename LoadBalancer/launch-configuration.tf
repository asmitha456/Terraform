resource "aws_instance" "Demo"{
  image-id=""
  instance_type="t3.micro"
  security_groups=[aws_security_group.web-security.id]
  user_data=<<-EOF
            #!/bin/bash
            echo "you are learning Terraform, Have a good day" > index.html
            nohup busybox httpd -f -p 8080 &
            EOF
  lifecycle{
    create_before_destroy=true
  }
}
