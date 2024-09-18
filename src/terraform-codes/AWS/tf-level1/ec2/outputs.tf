output "ec2-level1-public_ip" {
  value = aws_instance.ec2-tf_level1.public_ip
}