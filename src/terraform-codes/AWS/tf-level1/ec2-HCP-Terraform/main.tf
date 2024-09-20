provider "aws" {
  region = var.tf_level1_region
}

locals {
  commmon_tags = {
    provisioner_mode = "automatic"
    provisioner_user = "HCP Terraform"
    environment      = "unknown"
    costcenter       = "my cost unit center"
    service          = "my web service for transactions"
  }
}

resource "aws_instance" "ec2-HCP-Terraform" {
  ami = var.tf_level1_ami

  instance_type = var.instance_type_tf_level1

  subnet_id              = "subnet-0b7c45b94702fd324"
  vpc_security_group_ids = ["sg-0cb92cccf7157c7a0"]

  associate_public_ip_address = true

  key_name = "ubuntu_user_key"

#  connection {
#    type        = "ssh"
#    user        = "ec2-user"
#    private_key = file("../../keys/ubuntu_user_key.pem")
#    host        = self.public_ip
#  }

  timeouts {
    create = "3m"
    delete = "3m"
  }

#  provisioner "remote-exec" {
#    when       = create
#    on_failure = continue

#    inline = [
#      "sudo yum install update",
#      "sudo yum install -y nginx",
#      "sudo systemctl enable nginx",
#      "sudo yum install amazon-cloudwatch-agent"
#    ]
#  }
  tags = local.commmon_tags
}