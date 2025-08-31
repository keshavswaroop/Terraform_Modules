terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.10.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

module "eks" {
  source = "./infra"

  cluster_name = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids = var.subnet_ids
  node_groups = var.node_groups
}