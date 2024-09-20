variable "tf_level1_region" {
  type        = string
  description = "AWS Region"

  default = "us-east-1"

  validation {
    condition     = contains(["us-east-1", "us-east-2", "us-weast-1", "us-east-2"], var.tf_level1_region)
    error_message = "AWS Region only US"
  }
}

variable "tf_level1_bucket" {
  type        = string
  description = "S3 Bucket Name"

  default = "test-bucket_01"
}