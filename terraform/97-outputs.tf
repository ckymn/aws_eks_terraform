output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC id."
  sensitive   = false
}

output "aws_internet_gateway_id" {
  value       = aws_internet_gateway.igw.id
  description = "Internet gateway id."
  sensitive   = false
}

output "security_group_id" {
  value = aws_security_group.rds_sg.id
}

output "db_instance_endpoint" {
  value = aws_db_instance.myinstance.endpoint
}

# output "cluster_id" {
#   description = "EKS cluster ID."
#   value       = aws_eks_cluster.demo.id
# }
# output "cluster_endpoint" {
#   description = "Endpoint for EKS control plane."
#   value       = aws_eks_cluster.demo.endpoint
# }
output "region" {
  description = "AWS region"
  value       = var.aws_region
}
output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = var.aws_eks_cluster_name
}
