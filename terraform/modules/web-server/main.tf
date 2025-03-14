# https://medium.com/version-1/terraform-in-real-life-writing-modules-c0b6b5335218

locals {
  project_name = var.project_name
}

resource "aws_instance" "web_server" {
  
  key_name         = var.key_pair_name
  ami              = var.ami
  instance_type    = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id        = var.subnet_id
  
 tags = {
    Name    = var.project_name
    Project = local.project_name
  }
}
