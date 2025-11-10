Provider "aws"{
  region=var.aws_region
  instance=var.aws_instance
  ami=var.ami
}

#Creating VPC
resource "aws_vpc" "vpc-main"{
  cidr_block="192.168.0.0/16"
  instance_tenancy="default"
  enable_dns_support="true"
  enable_dns_hostname="true'
  enable_classiclink="false"
  tags={
    Name="vpc-main"
  }
}

#creating Public Subnets
resource "aws_subnet" "vpc-main-public1"{
  vpc_id=aws_vpc.vpc-main.id
  cidr_block="192.168.1.0/24"
  map_public_ip_on_launch="true"
  availability_zone="us-east-1a"
  tags={
    Name="vpc-main-public1"
  }
}

#creating Private Subnets
resource "aws_subnet" "vpc-main-private1"{
  vpc_id=aws_vpc.vpc-main.id
  cidr_block="192.168.2.0/24"
  map_public_ip_on_launch="false"
  availability_zone="us-east-1b"
  tags={
    Name="vpc-main-private1"
  }
}

#Create Internet Gateway
resource "aws_internet_gateway" "main-gw"{
  vpc_id=aws_vpc.vpc-main.id
  tags={
    Name="gateway-main"
  }
}

#Create Routing Table
resource "aws_route_table" "main-public"{
  vpc_id=aws_vpc.vpc-main.id
  route{
    cidr_block="0.0.0.0/0"
    gatewat_id=aws_internet_gateway.main-gw.id
  }
  tags={
    Name="main-public"
  }
}

#Route Associated Public Subtes
resorce "aws_route_table_association" "public-main-1"{
  subnet_id=aws_subnet.vpc-main-public1.id
  route_table_id=aws_route_table.main-public.id
}

  
