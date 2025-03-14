# Retrieve the existing VPC by name

data "aws_vpc" "exist_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.exist_vpc_name_in]
  }
}

# Retrieve an existing subnet within the VPC

data "aws_subnet" "exist_public_subnet" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.exist_vpc.id]
  }
  filter {
    name   = "tag:Name"
    values = [var.exist_public_subnet_name_in]
  }
}


data "aws_subnet" "exist_private_subnet" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.exist_vpc.id]
  }
  filter {
    name   = "tag:Name"
    values = [var.exist_private_subnet_name_in]
  }
}

