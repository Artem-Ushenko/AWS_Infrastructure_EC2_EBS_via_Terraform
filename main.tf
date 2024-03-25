resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("D:/MY_AWS_CLOUD/aws_key.pub")
}

module "EC2_instance" {
  source = "./modules/EC2_instance"

  instance_name = "test_instance_${formatdate("YYYY_MM_DD_hh_mm_ss", timestamp())}"
  instance_type = "t2.micro"
  ami           = "ami-019f9b3318b7155c5"
  availability_zone = "us-east-2a"
  key_name = aws_key_pair.deployer.key_name
}

module "EBS_volume" {
  source = "./modules/EBS_volume"

  availability_zone = "us-east-2a"
  volume_name       = "test_volume_${formatdate("YYYY_MM_DD_hh_mm_ss", timestamp())}"
  volume_size       = 10
}

resource "aws_volume_attachment" "ebs_volume_attachment" {
  device_name = "/dev/sdh"
  instance_id = module.EC2_instance.instance_id
  volume_id   = module.EBS_volume.volume_id
}