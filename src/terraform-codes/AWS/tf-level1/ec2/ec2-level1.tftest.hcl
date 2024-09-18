variables {
  ami_level1 = "ami-0ebfd941bbafe70c6"
  # With next line, it's a bad test (error)
  #instance_type_level1 = "t3.micro"
  # With next line, it's a good test (pass)
  instance_type_level1 = "t2.micro"
}

run "validate_instance_type" {
  command = plan

  assert {
    condition     = aws_instance.ec2-tf_level1.instance_type == "t2.micro"
    error_message = "You need a free tier instance type"
  }
}

run "validate_ami" {
  command = plan

  assert {
    condition     = aws_instance.ec2-tf_level1.ami == "ami-0ebfd941bbafe70c6"
    error_message = "You need a free tier AMI"
  }
}