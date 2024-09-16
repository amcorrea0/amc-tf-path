# VPC Variables
variable "tf_level1_region" {
    type = string
    description = "AWS tf_level1 Region"
    default = "us-east-1"
}

variable "tf_level1_user" {
    type = string
    description = "Terraform User for tf_level1"
    default = "tf_user" # Replace your IAM user for provisioning
}

# Common Tags Variables

# General tags:
# name, provisioner mode, provisioner tool tool like manual, devops jenkins, devops azuredevops, other)
variable "tf_level1_provisioner" {
    type = string
    description = "Provisioner mode: manual, automatic"
    default = "automatic"
}

variable "tf_level1_provisioner_tool" {
    type = string
    description = "Provisioner tool: manual, terraform, jenkins, azuredevops, etc"
    default = "terraform"
}

variable "tf_level1_provisioner_user" {
    type = string
    description = "Provisioner Real User Name"
    default = "Unknown"
}

variable "tf_level1_environment" {
    type = string
    description = "Environment"
    default = "undefined"
}

# Billong tags
variable "tf_level1_business_unit" {
    type = string
    description = "Business Unit"
    default = "unknown"
}

variable "tf_level1_costcenter" {
    type = string
    description = "Cost Center"
    default = "unknown"
}

# Principal Application/Service tags
variable "tf_level1_application" {
    type = string
    description = "Application"
    default = "unknown"
}

variable "tf_level1_service" {
    type = string
    description = "Service"
    default = "unknown"
}

# Compliance tags (Dataresidency = country, compliance = compliance requirements like pii, hipaa, sox)
variable "tf_level1_dataresidency" {
    type = string
    description = "Data residency"
    default = "unknown"
}

variable "tf_level1_compliance" {
    type = string
    description = "Compliance Requirements like pii, hipaa, sox"
    default = "sox"
}

variable "tf_level1_exposure" {
    type = string
    description = "Exposure Level: private, public, hybrid"
    default = "public"
}

# Optimization tags (schedule = 24x7 / GMT+5, or schedule = 12x5 / GMT+5, maxruntime = 14days))
variable "tf_level1_schedule" {
    type = string
    description = "Schedule Services"
    default = "24x7"
}

variable "tf_level1_maxruntime" {
    type = string
    description = "Maxruntime for services"
    default = "undefined"
}