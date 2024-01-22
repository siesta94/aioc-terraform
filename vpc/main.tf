module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.cidr
# Networking stuff for HA / or single AZ's, check variable values, defaults are healthy
  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway
  reuse_nat_ips = var.reuse_nat_ips

# DB subnets if neccessery
  create_database_subnet_group	= var.create_database_subnet_group
  database_subnets = var.database_subnets

  tags = {
    Terraform = "true"
    Environment = var.environment
  }
}