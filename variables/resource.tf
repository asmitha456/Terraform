resource "aws_instance" "Demo2"{
        ami=lookup(var.ami, var.aws_region)
        instance_type="t3.micro"
        tags={
                name="Demo2"
        }
}
