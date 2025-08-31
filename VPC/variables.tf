variable "vpc_name" {
  type = string
  description = "Name for VPC"
  default = "Practice_VPC"
  
}

variable "cidr_block" {
  type = string
  description = "CIDR block for VPC"
  default = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  type = list(string)
  description = "CIDR for Private Subnet"
  default = [ "10.0.1.0/24","10.0.2.0/24" ]
}

variable "public_subnet_cidr" {
  type = list(string)
  description = "CIDR for Public Subnet"
  default = [ "10.0.3.0/24","10.0.4.0/24" ]
}

variable "availability_zones" {
  type = list(string)
  description = "Availability Zone for VPC"
  default = [ "eu-north-1a","eu-north-1b" ]
}
