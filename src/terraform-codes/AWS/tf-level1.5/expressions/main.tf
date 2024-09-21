resource "random_id" "id" {
  byte_length = 8
}

locals {
  name  = (var.name != "" ? var.name : random_id.id.hex)
  owner = var.team
  commmon_tags = {
    Owner = local.owner
    Name  = local.name
  }
}

variable "name" {
    type = string
}

variable "team" {
    type = string
    default = "unknown"
}

output "ou_owner" {
    value = local.owner
}

output "ou_name" {
    value = local.name
}