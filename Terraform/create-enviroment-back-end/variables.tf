variable "eks_cluster_role_arn" {
  description = "The ARN of the IAM role for the EKS cluster"
  type        = string
}

variable "eks_node_role_arn" {
  description = "The ARN of the IAM role for the EKS node group"
  type        = string
}

variable "node_instance_type" {
  description = "The instance type for the EKS nodes"
  type        = string  # Asegúrate de que sea una lista de strings
}

variable "node_disk_size" {
  description = "The disk size for the EKS nodes"
  type        = number
}

variable "desired_size" {
  description = "The desired size of the EKS node group"
  type        = number
}

variable "min_size" {
  description = "The minimum size of the EKS node group"
  type        = number
}

variable "max_size" {
  description = "The maximum size of the EKS node group"
  type        = number
}

variable "max_unavailable" {
  description = "The maximum number of nodes that can be unavailable during an update"
  type        = number
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet1_name" {
  description = "The name of the first subnet"
  type        = string
}

variable "subnet1_cidr" {
  description = "The CIDR block for the first subnet"
  type        = string
}

variable "subnet2_name" {
  description = "The name of the second subnet"
  type        = string
}

variable "subnet2_cidr" {
  description = "The CIDR block for the second subnet"
  type        = string
}

variable "rt_name" {
  description = "The name of the route table"
  type        = string
}

variable "igw_name" {
  description = "The name of the internet gateway"
  type        = string
}

variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "eks_version" {
  description = "The version of the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
}