provider "aws" {
  # Update with data block
  #region = var.tf_level15_region
  region = data.terraform_remote_state.tf_level15_vpc_state.outputs.aws_region
}

resource "aws_vpc" "tf_level15_vpc" {
  cidr_block = "10.5.0.0/16"

  tags = local.common_tags
}

locals {
  common_tags = {
    # General (name, provisioner mode, provisioner tool tool like manual, 
    # devops jenkins, devops azuredevops, other)
    name             = "tf_level15-common-tags"
    provisioner_mode = var.tf_level15_provisioner_mode
    provsioner_tool  = var.tf_level15_provisioner_tool
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

data "aws_region" "current" {

}