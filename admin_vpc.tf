resource "aws_vpc" "admin_vpc" {
  provider              = aws.admin
  cidr_block            = "10.0.0.0/16"
  enable_dns_support    = true
  enable_dns_hostnames  = true
  tags = {
    Name        = "admin-vpc"
    Environment = "admin"
  }
}

resource "aws_subnet" "admin_public_subnet" {
  provider                = aws.admin
  vpc_id                  = aws_vpc.admin_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "admin-public-subnet"
  }
}

resource "aws_subnet" "admin_private_subnet" {
  provider                = aws.admin
  vpc_id                  = aws_vpc.admin_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "admin-private-subnet"
  }
}
