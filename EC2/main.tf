terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.13.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

module "ec2" {
  source = "./infra"

  sg_description = var.sg_description
  ec2_name = var.ec2_name
  key_name = var.key_name
#   key_value = var.key_value
  volume_size = var.volume_size
  volume_type = var.volume_type
  instance_type = var.instance_type
  ami_id = var.ami_id
  sg_name = var.sg_name
}


resource "local_file" "ec2_output" {
  content = module.ec2.public_instance_id
  filename = "D:\\Terraform_Modules\\EC2\\inventory.ini"
}