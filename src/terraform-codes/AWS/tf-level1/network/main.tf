provider "aws" {
  region = "us-east-1"
}

locals {
  commmon_tags = {
    provisioner_mode = "automatic"
    provisioner_user = "My Name ;-)"
    environment      = "unknown"
    costcenter       = "my cost unit center"
    service          = "my web service for transactions"
  }
}

resource "aws_vpc" "tf_level1_vpc" {
  cidr_block = "10.2.0.0/16"

  tags = local.commmon_tags
}

resource "aws_subnet" "tf_level1_subprivate" {
  vpc_id = aws_vpc.tf_level1_vpc.id

  cidr_block = "10.2.10.0/24"
  tags       = local.commmon_tags
}

resource "aws_subnet" "tf_level1_subpublic" {
  vpc_id = aws_vpc.tf_level1_vpc.id

  cidr_block = "10.2.20.0/24"
  tags       = local.commmon_tags
}

resource "aws_internet_gateway" "tf_level1_gw" {
  vpc_id = aws_vpc.tf_level1_vpc.id

  tags = local.commmon_tags
}

resource "aws_route_table" "tf_level1_rt" {
  vpc_id = aws_vpc.tf_level1_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf_level1_gw.id
  }

  tags = local.commmon_tags
}

resource "aws_route_table_association" "tf_level1_subpublic_association" {
  subnet_id      = aws_subnet.tf_level1_subpublic.id
  route_table_id = aws_route_table.tf_level1_rt.id
}

resource "aws_security_group" "tf_level1_sg" {
  name        = "SSH"
  description = "Allow SSH traffic"

  vpc_id = aws_vpc.tf_level1_vpc.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.tf_level1_vpc.cidr_block, "152.203.137.214/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.commmon_tags
}