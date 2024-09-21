resource "aws_subnet" "tf_level15_subnetpri" {
  vpc_id = aws_vpc.tf_level15_vpc.id

  cidr_block = "10.5.8.0/24"
  tags       = local.common_tags
}

resource "aws_subnet" "tf_level15_subnetpub" {
  vpc_id = aws_vpc.tf_level15_vpc.id

  cidr_block = "10.5.2.0/24"
  tags       = local.common_tags
}

# Data Sources
data "aws_availability_zones" "tf_level15_available" {
  state = "available"

  filter {
    name   = "zone-type"
    values = ["availability-zone"]
  }
}

data "terraform_remote_state" "tf_level15_vpc_state" {
  backend = "local"

  config = {
    path = "../vpc/statebackend/terraform.tfstate"
  }
}