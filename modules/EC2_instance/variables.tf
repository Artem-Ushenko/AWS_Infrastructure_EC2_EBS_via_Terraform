variable "instance_type" {
    description = "EC2 Instance type"
    type = string
}

variable "instance_name" {
    description = "EC2 Instance name"
    type = string
}

variable "ami" {
    description = "EC2 Instance AMI"
    type = string
}
variable "availability_zone" {
    description = "EC2 Instance availability zone"
    type = string
}

variable "key_name" {
    description = "EC2 Instance key name"
    type = string
}