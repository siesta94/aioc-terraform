output "database_subnets" {
  value = module.vpc.database_subnets
  description = "DB subnets for different modules"
}

output "vpc_id" {
  value = module.vpc.vpc_id
  description = "VPC ID for different modules"
}

output "private_subnets" {
  value = module.vpc.private_subnets
  description = "Private subnets for other projects"
}

output "public_subnets" {
  value = module.vpc.public_subnets
  description = "Public subnets for other projects"
}