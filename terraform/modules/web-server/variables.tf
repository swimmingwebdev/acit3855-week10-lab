# https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/master/variables.tf

variable "project_name" {
  description = "Name to be used on EC2 instance created"
  type        = string
  default     = "week10-lab"
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "AMI Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance"
  type        = string
  default     = null
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = null
}