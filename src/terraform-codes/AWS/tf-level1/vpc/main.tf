provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "tf_level1_vpc" {
  cidr_block = "10.2.0.0/16"

  tags = {
    name = "tf_level1_vpc"

    provisioner_mode = "automatic"
    provisioner_user = "My Name ;-)"
    environment      = "unknown"
    costcenter       = "my cost unit center"
    service          = "my web service for transactions"
  }
}