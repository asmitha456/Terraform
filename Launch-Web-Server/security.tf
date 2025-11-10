resource "aws_security_group" "web-security"{
  name="webwerver-securitygroup"
  ingress{
    from-port=8080
    to-port=8080
    protocol="tcp"
    cidr_blocks=["0.0.0.0/0"]
  }
}
