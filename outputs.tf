output "instance_id" {
  value = module.EC2_instance.instance_id
}
output "instance_name" {
  value = module.EC2_instance.instance_name
}
output "instance_type" {
  value = module.EC2_instance.instance_type
}
output "instance_ami" {
  value = module.EC2_instance.instance_ami
}
output "instance_availability_zone" {
  value = module.EC2_instance.instance_availability_zone
}
output "instance_public_ip" {
  value = module.EC2_instance.instance_public_ip
}
output "instance_private_ip" {
  value = module.EC2_instance.instance_private_ip
}

output "volume_id" {
  value = module.EBS_volume.volume_id
}
output "volume_name" {
  value = module.EBS_volume.volume_name
}
output "volume_size" {
  value = module.EBS_volume.volume_size
}
output "volume_availability_zone" {
  value = module.EBS_volume.volume_availability_zone
}