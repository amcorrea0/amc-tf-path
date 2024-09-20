variable "tf_level1_region" {
  type    = string
  default = "us-east-1"
}

variable "ami_tf_level1" {
  type    = string
  default = "ami-0ebfd941bbafe70c6"

  validation {
    #      condition     = contains(["ami-Amazon", "ami-Ubuntu", "ami-RedHat", "ami-Windows"], var.instance_type_level1) 
    condition     = contains(["ami-0ebfd941bbafe70c6", "ami-0583d8c7a9c35822c", "ami-0583d8c7a9c35822c", "ami-0888db1202897905c"], var.ami_tf_level1)
    error_message = "The OS Image must be a free tier AMI"
  }
}

variable "instance_type_level1" {
  type    = string
  default = "t2.micro"

  validation {
    condition     = contains(["t2.micro", "t3.micro"], var.instance_type_level1)
    error_message = "The instance type must be t2.micro or t3.micro. (Free Tier)"
  }
}