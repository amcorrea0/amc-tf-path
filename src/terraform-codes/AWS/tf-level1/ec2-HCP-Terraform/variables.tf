variable "tf_level1_region" {
  type    = string
  default = "us-east-1"

  description = "AWS Region"
}

variable "tf_level1_ami" {
  type    = string
  default = "ami-0ebfd941bbafe70c6"

  validation {
    condition     = contains(["ami-0ebfd941bbafe70c6", "ami-0583d8c7a9c35822c"], var.tf_level1_ami)
    error_message = "The OS would be a free tier instance"
  }
}

variable "instance_type_tf_level1" {
  type = string

  default = "t2.micro"

  validation {
    condition     = contains(["t2.micro", "t3.micro"], var.instance_type_tf_level1)
    error_message = "instance type would be free tier"
  }
}