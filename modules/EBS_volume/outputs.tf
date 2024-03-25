output "volume_id" {
  value = aws_ebs_volume.new_volume.id
}

output "volume_name" {
  value = aws_ebs_volume.new_volume.tags.Name
}

output "volume_size" {
  value = aws_ebs_volume.new_volume.size
}
output "volume_availability_zone" {
  value = aws_ebs_volume.new_volume.availability_zone
}