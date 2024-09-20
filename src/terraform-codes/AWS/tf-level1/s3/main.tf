provider "aws" {
  region = var.tf_level1_region

  #  default_tags {
  #    tags = {
  #      provisioner_mode = "automatic"
  #      provisioner_user = "My Name ;-)"
  #      environment      = "unknown"
  #      costcenter       = "my cost unit center"
  #      service          = "my web service for transactions"
  #    }
  #  }
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

resource "aws_s3_bucket" "tf_level1_s3_bucket" {
  bucket = var.tf_level1_bucket

  #  tags = local.commmon_tags
}