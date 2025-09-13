variable "key_name" {
  type = string
  description = "AWS Key Name"
}

# variable "key_value" {
#   type = string
#   description = "AWS public key"
# }

variable "sg_name" {
  type = string
  description = "Security Group Name"
}

variable "sg_description" {
  type = string
  description = "Security Group Descritpion"
}

variable "ami_id" {
  type = string
  description = "AMI ID"
}

variable "instance_type" {
  type = string
  description = "Instance Type"
}

variable "volume_size" {
  type = number
  description = "Size of Storage"
}

variable "volume_type" {
  type = string
  description = "Type of Volume"
}

variable "ec2_name" {
  type = string
  description = "EC2 Name"
}