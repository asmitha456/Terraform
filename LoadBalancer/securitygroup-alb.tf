resource "aws_security_group" "alb"{
  name="webwerver-securitygroup-alb"
  ingress{
    from-port=80
    to-port=80
    protocol="tcp"
    cidr_blocks=["0.0.0.0/0"]
  }
  egress{
    from-port=0
    to-port=0
    protocol="-1"
    cidr_blocks=["0.0.0.0/0"]
  }
}
