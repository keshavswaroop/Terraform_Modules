variable "key_name" {
  type = string
  description = "AWS Key Name"
  default = "terraform_automation_key_pair"
}

# variable "key_value" {
#   type = string
#   description = "AWS public key"
#   default = file("automation_key.pub")
# }

variable "sg_name" {
  type = string
  description = "Security Group Name"
  default = "ec2_security_group"
}

variable "sg_description" {
  type = string
  description = "Security Group Descritpion"
  default = "Security Group for EC2"
}

variable "ami_id" {
  type = string
  description = "AMI ID"
  default = "ami-0a716d3f3b16d290c"
}

variable "instance_type" {
  type = string
  description = "Instance Type"
  default = "t3.micro"
}

variable "volume_size" {
  type = number
  description = "Size of Storage"
  default = 8
}

variable "volume_type" {
  type = string
  description = "Type of Volume"
  default = "gp3"
}

variable "ec2_name" {
  type = string
  description = "EC2 Name"
  default = "terraform_ansible_auto"
}