output "db_endpoint" {
  value       = module.db.db_instance_endpoint
  description = "End point of RDS instance"
}

output "rds_sg" {
  value = module.rds_sg.security_group_id
  description = "Security Group ID for RDS"
}