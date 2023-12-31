resource "aws_vpc" "main" {
  cidr_block = var.aws_vpc_cidr_block

  instance_tenancy                 = "default"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  assign_generated_ipv6_cidr_block = false

  tags = {
    Name = var.aws_vpc_name
  }
}
