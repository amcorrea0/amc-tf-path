variable "tf_level1_region" {
  type        = string
  description = "AWS Region"

  default = "us-east-1"
  validation {
    condition     = contains(["us-east-1", "us-east-2"], var.tf_level1_region)
    error_message = "Seleccione una región US EAST"
  }
}

variable "tf_level1_dyndb_name" {
  type        = string
  description = "AWS Dynamo DB Table"

  default = "amc-dynamodb-us-east-1"
  #default = "amc-dynamodb-${var.tf_level1_region}"
}

variable "tf_level1_dyndb_billing" {
  type    = string
  default = "PROVISIONED"

  validation {
    condition     = contains(["PROVISIONED", "PAY_PER_REQUEST"], var.tf_level1_dyndb_billing)
    error_message = "Seleccionar modo PROVISIONED o PAY_PER_REQUEST"
  }
}

variable "tf_level1_dyndb_tbclass" {
  type    = string
  default = "STANDARD"

  validation {
    condition     = contains(["STANDARD", "STANDARD_INFREQUENT_ACCESS"], var.tf_level1_dyndb_tbclass)
    error_message = "Seleccionar modo STANDARD o STANDARD_INFREQUENT_ACCESS"
  }
}

