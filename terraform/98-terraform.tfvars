#AWS Region ID
aws_region = "us-east-1"

#AWS profile Name aws profile
aws_access_key = ""
aws_secret_key = ""

#AWS RDS Details
aws_rds_name = "devopscaserdsinstance"
# aws_rds_username = ""
# aws_rds_password = ""

#AWS VPC Details
aws_vpc_name            = "devops_case_vpc"
aws_vpc_cidr            = "192.168.0.0/16"
aws_vpc_private_subnets = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
aws_vpc_public_subnets  = ["192.168.11.0/24", "192.168.12.0/24", "192.168.13.0/24"]
aws_vpc_azs             = ["us-east-1a", "us-east-1b"]

#AWS EKS Details
aws_eks_cluster_name = "devops_case_eks_cluster"


#AWS ECR Details
aws_ecr_backend  = "devops_case_ecr_backend"
aws_ecr_frontend = "devops_case_ecr_frontend"



#AWS Worker Node Details
aws_eks_node_group_name_one = "devops_case_eks_node_group_one"
aws_eks_node_group_name_two = "devops_case_eks_node_group_two"
