output "database_subnets" {
  value = module.vpc.database_subnets
  description = "DB subnets for different modules"
}

output "vpc_id" {
  value = module.vpc.vpc_id
  description = "VPC ID for different modules"
}