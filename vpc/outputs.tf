output "database_subnets" {
  value = module.vpc.database_subnets
  description = "DB subnets for different module"
}