Create an EC2 intance and then create IAM user and add administrative policies
Connect EC2 instance and install terraform & AWS CLI then configure the AWS CONFIG, use IAM access keys
sudo apt update -y
sudo su
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
sudo apt install wget unzip vim -y
terraform -v (Terraform v1.13.5)
Initialize terraform - Terraform init
Execution plan for your script - terraform plan
Create infrastructure - terraform apply -auto-approve
Validate script - terraform validate
