provider "aws" {
  region = var.tf_level1_region
}

resource "aws_dynamodb_table" "tf_level1_dynamodb-table" {
  name = var.tf_level1_dyndb_name

  billing_mode   = var.tf_level1_dyndb_billing
  read_capacity  = 20
  write_capacity = 20

  hash_key  = "User_Id"
  range_key = "GameTitle"

  # Para revisar más adelante la encripción de los datos
  server_side_encryption {
    enabled = true
  }

  table_class = var.tf_level1_dyndb_tbclass

  attribute {
    name = "User_Id"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }

  # Added version 3
  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }

  tags = {
    Name        = "dynamodb-table-amc"
    Environment = "testing"
  }
}