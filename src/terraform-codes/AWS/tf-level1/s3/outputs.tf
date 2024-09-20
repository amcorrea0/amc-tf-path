output "tf_level1_bucket_id" {
  value = aws_s3_bucket.tf_level1_s3_bucket.id
}

output "tf_level1_bucket_tags" {
  value = aws_s3_bucket.tf_level1_s3_bucket.tags
}