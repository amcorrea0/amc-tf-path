resource "aws_internet_gateway" "tf_level15_igw" {
  vpc_id = var.tf_level15_vpc_id

  tags = local.common_tags
}

resource "aws_route_table" "tf_level15_rt" {
  vpc_id = var.tf_level15_vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf_level15_igw.id
  }

  tags = local.common_tags
}

resource "aws_route_table_association" "tf_level15_rt_ass" {
  route_table_id = aws_route_table.tf_level15_rt.id
  subnet_id      = var.tf_level15_subnetpub_id
}

resource "aws_security_group" "tf_level15_sg" {
  name        = "SSH"
  description = "Allow SSH trafic"

  vpc_id = var.tf_level15_vpc_id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.tf_level15_cidr, var.my_ipnetwork]
  }

  egress {
    description = "SSH remote admin"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = [var.my_ipnetwork]
    #cidr_blocks = ["0.0.0.0/0"]
  }

}

locals {
  common_tags = {
    # General (name, provisioner mode, provisioner tool tool like manual, 
    # devops jenkins, devops azuredevops, other)
    name             = "tf_level15-common-tags"
    provisioner_mode = var.tf_level15_provisioner_mode
    provisioner_tool = var.tf_level15_provisioner_tool
    provisioner_user = "Andres M"

    # Environment (dev, test, stage, prod, undefined)
    environment = var.tf_level15_environment

    # Billing
    business_unit = "enterpreneurship"
    costcenter    = "innovation-center"
    region        = var.tf_level15_region
    owner         = var.tf_level15_user

    # Application / Service
    application = "Terraform test application"
    service     = "Terraform test service"

    # Compliance (Dataresidency = country, compliance = compliance requirements like pii, hipaa, sox)
    dataresidency = "USA"
    compliance    = "sox"
    exposure      = "public"

    # Optimization (schedule = 24x7 / GMT+5, or schedule = 12x5 / GMT+5, maxruntime = 14days)
    schedule   = "24x7"
    maxruntime = "1 hour"
  }
}