#Login to AWS EC2 console and observe an EC@ instance getting deployed

provider "aws"{
        access_key=""
        secret_key=""
        region="us-east-1"
}

resource "aws_instance" "Demo1"{
        ami="ami-0ecb62995f68bb549"
        instance_type="t3.micro"
        tags={
                name="Demo1"
        }
}

#If you dont want to write access keys in script then execute below commands
#Authentication using environment variables, it will work only current shell if you reboot again will need to export these variables again
  export aws_access_key_id=""
  export aws_secret_key=""
  export aws_default_region="us-east-1"
  terraform plan

#AWS CLI Installation
1. download file
2. unzip file
3. run install program
4. check version aws --version
5. aws configure to enter aws access keys
6. aws credentials stored in sudo cat ~/.aws/credentals


