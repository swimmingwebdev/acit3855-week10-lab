# https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/master/outputs.tf
# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-outputs

output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web_server.public_ip
}

output "ec2_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.web_server.private_ip
}

output "private_dns" {
  description = "Private DNS of the EC2 instance"
  value       = aws_instance.web_server.private_dns
}

output "public_dns" {
  description = "Private DNS of the EC2 instance"
  value       = aws_instance.web_server.public_dns
}

output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web_server.id
}
