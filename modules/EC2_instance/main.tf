resource "aws_instance" "new_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  key_name = var.key_name
  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = var.instance_name
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y && sudo yum upgrade -y",
      "sudo yum install docker -y",
      "sudo systemctl start docker",
      "sudo systemctl enable docker",
      "sudo usermod -a -G docker ec2-user",
      "sudo docker run -d -p 80:80 -v /var/www/html:/usr/share/nginx/html nginx",
      "sudo mkdir -p /var/www/html",
      "sudo echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
    ]

    connection {
      type = "ssh"
      user = "ec2-user"
      private_key = file("D:/MY_AWS_CLOUD/aws_key")
      host = self.public_ip
    }
  }
}