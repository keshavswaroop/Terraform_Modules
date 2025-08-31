variable "cluster_name" {
  type = string
  description = "Cluster Name"
  default = "EKS_Cluster"
}

variable "cluster_version" {
  type = number
  description = "Cluster Version"
  default = 1.31
}

variable "subnet_ids" {
  type = list(string)
  description = "Subnet IDs - This is the private subnet ids. It will be taken once vpc is created. Replace the subnet ids below"
  default = [ "subnet-0", "subnet-0"]
}

variable "node_groups" {
  description = "EKS Node Groups"
  type = map(object({
    instance_types = list(string)
    capacity_type = string
    scaling_config = object({
      desired_size = number
      max_size = number
      min_size = number
    })
  }))
    default = {
      "general" = {
        instance_types = ["t3.micro"]
        capacity_type = "ON_DEMAND"
        scaling_config = {
            desired_size = 2
            max_size = 4
            min_size = 1
        }
      }
    }
}