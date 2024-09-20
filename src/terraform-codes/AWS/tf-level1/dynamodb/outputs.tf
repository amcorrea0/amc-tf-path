output "db_data_ofuscated" {
  value     = aws_dynamodb_table.tf_level1_dynamodb-table.attribute
  sensitive = true
}