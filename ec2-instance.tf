Create an EC2 intance and then create IAM user and add administrative policies
Connect EC2 instance and install terraform & AWS CLI then configure the AWS CONFIG, use IAM access keys
sudo apt update -y
sudo su
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
sudo apt install wget unzip vim -y
terraform -v (Terraform v1.13.5)
1. Terraform init - download and configure plugin for provider "aws"
2. terraform plan - generate and shoe execution plan
3. terraform apply - build the infrastructure
4. terraform validate - validate all terraform files in present working directory

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


