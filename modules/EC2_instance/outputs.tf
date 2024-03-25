output "instance_id" {
  value = aws_instance.new_instance.id
}

output "instance_public_ip" {
  value = aws_instance.new_instance.public_ip
}

output "instance_private_ip" {
  value = aws_instance.new_instance.private_ip
}

output "instance_name" {
  value = aws_instance.new_instance.tags.Name
}

output "instance_type" {
  value = aws_instance.new_instance.instance_type
}

output "instance_ami" {
  value = aws_instance.new_instance.ami
}

output "instance_availability_zone" {
  value = aws_instance.new_instance.availability_zone
}