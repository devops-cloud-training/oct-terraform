output "instance_public_ip" {
  value       = aws_instance.my_new_web_server[*].public_ip
  description = "This is printing public IP of the instance"
}

output "instance_public_dns" {
  value       = aws_instance.my_new_web_server[*].public_dns
  description = "This is printing public DNS of the instance"
}

output "instance_private_ip" {
  value       = aws_instance.my_new_web_server[*].private_ip
  description = "This is printing private IP of the instance"
}
