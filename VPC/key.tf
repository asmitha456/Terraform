resource "aws_key_pair" "vpckeypair"{
  key_name="vpckeypair"
  public_key=file(var.path_to_public_key)
}
