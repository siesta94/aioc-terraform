output "db_endpoint" {
  value       = module.db.db_instance_endpoint
  description = "End point of RDS instance"
}