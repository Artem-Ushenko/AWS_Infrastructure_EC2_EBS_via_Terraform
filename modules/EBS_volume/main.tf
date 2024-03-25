resource "aws_ebs_volume" "new_volume" {
    availability_zone = var.availability_zone
    size              = var.volume_size

    tags = {
        Name = var.volume_name
    }
}