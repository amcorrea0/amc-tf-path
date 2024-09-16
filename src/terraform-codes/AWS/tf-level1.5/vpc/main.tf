provider "aws" {
  region = var.tf_level1_region
}

resource "aws_vpc" "tf_level1_vpc" {
  cidr_block = "10.1.0.0/16"
  name = "tf_level1_vpc"

  tags = 
}

locals {
  common_tags = {
    # General (name, provisioner mode, provisioner tool tool like manual, 
    # devops jenkins, devops azuredevops, other)
    name = "tf_level1-common-tags"
    provisioner_mode = var.tf_level1_provisioner_mode
    provsioner_tool = var.tf_level1_provisioner_tool
    provisioner_user = "Andres M. Correa"

    # Environment (dev, test, stage, prod, undefined)
    environment = var.tf_level1_environment

    # Billing
    business_unit = "enterpreneurship"
    costcenter = "innovation-center"
    region = var.tf_level1_region
    owner = var.tf_level1_user

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