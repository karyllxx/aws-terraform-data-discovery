data "aws_vpc" "selected" {
  tags = {
    Name = var.vpc_name
  }
}

data "aws_subnet" "public" {
  tags = {
    Name = var.public_subnet_name
  }
}

data "aws_security_group" "selected" {
  tags = {
    Name = var.security_group_name
  }
}

data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}