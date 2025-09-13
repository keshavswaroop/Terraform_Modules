output "public_instance_id" {
  value = aws_instance.my_instance.public_ip
}