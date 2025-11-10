#create a new directory demo4 and use module to launch instance

module "ec2_instance"{
  source="~/terraform-demos/modules/ec2-instance"
  aws_region="us-east-1"
  aws_ami="ami-0ecb62995f68bb549"
}

#change the directory to demo4 and execute terraform init, terraform apply.
