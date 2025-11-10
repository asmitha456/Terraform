resource "aws_instance" "Demo2"{
        ami=lookup(var.ami, var.aws_region)
        instance_type="t3.micro"
        key_name="terraform"
        tags={
                name="Demo2"
        }
}
