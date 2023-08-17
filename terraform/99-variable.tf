variable "aws_region" {
  type        = string
  description = "Add AWS region."
  default     = "us-east-1"
}
variable "access_key" {
  type      = string
  default   = ""
  sensitive = true
}
variable "secret_key" {
  type      = string
  default   = ""
  sensitive = true
}
variable "aws_vpc_name" {
  type        = string
  description = "Add name for your VPC."
  default     = "devops_case_vpc"
}
variable "aws_vpc_cidr_block" {
  type        = string
  description = "Add CIDR block for your VPC."
  default     = "192.168.0.0/16"
}
variable "aws_rds_name" {
  type        = string
  description = "Add name for your RDS instance."
  default     = "devopscaserdsinstance"
}
variable "aws_rds_username" {
  type        = string
  description = "Add username for your RDS instance."
  sensitive   = true
}
variable "aws_rds_password" {
  type        = string
  description = "Add password for your RDS instance."
  sensitive   = true
}
variable "aws_vpc_azs" {
  type        = list(string)
  description = "Add list of AZs available in the region that you want to use. Example ['us-east-1a','us-east-1b','us-east-1c']"
  default     = ["us-east-1a", "us-east-1b"]
}
variable "aws_vpc_private_subnets" {
  type        = list(string)
  description = "Add list of CIDR locks for private subnets in the vpc. Example ['192.168.1.0/24','192.168.2.0/24','192.168.3.0/24']"
  default     = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
}
variable "aws_vpc_public_subnets" {
  type        = list(string)
  description = "Add list of CIDR locks for public subnets in the vpc. Example ['192.168.11.0/24','192.168.12.0/24','192.168.13.0/24']"
  default     = ["192.168.11.0/24", "192.168.12.0/24", "192.168.13.0/24"]
}
variable "aws_eks_cluster_name" {
  type        = string
  description = "Enter a name for ECS cluster"
  default     = "devops_case_eks_cluster"
}
variable "aws_ecr_backend" {
  type        = string
  description = "Enter a name for ECS cluster"
  default     = "devops_case_ecr_backend"
}
variable "aws_ecr_frontend" {
  type        = string
  description = "Enter a name for ECS cluster"
  default     = "devops_case_ecr_frontend"
}

variable "aws_eks_node_group_name_one" {
  type        = string
  description = "Enter a name for ECS cluster"
  default     = "devops_case_eks_node_group_one"
}
variable "aws_eks_node_group_name_two" {
  type        = string
  description = "Enter a name for ECS cluster"
  default     = "devops_case_eks_node_group_two"
}
