terraform{
  backend "S3"{
    bucket="terraform-demo3"
    key"state/terraform.tfstate"
    region="us-east-1"
    }
}
