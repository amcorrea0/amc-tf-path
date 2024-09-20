variables {
  # Good Test (passed):
  tf_level1_bucket = "my-test-bucket-amc-01"
  # Bad Test (failed):
  #    tf_level1_bucket = "my-secret-bucket"
}

run "bucket_name_test" {
  command = plan

  assert {
    condition     = aws_s3_bucket.tf_level1_s3_bucket.bucket == "my-test-bucket-amc-01"
    error_message = "The S3 bucket name would be \"my-test-bucket-amc-01\""
  }
}