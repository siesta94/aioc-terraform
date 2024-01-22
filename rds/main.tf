module "db" {
  source = "terraform-aws-modules/rds/aws"

  # Basic stuff about rds instance
  identifier        = var.identifier_name
  engine            = var.engine
  engine_version    = var.engine_version
  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage

  # Basic stuff about DB
  db_name  = var.db_name
  username = var.db_username
  port     = var.db_port

  iam_database_authentication_enabled = true

  vpc_security_group_ids = [module.rds_sg.security_group_id]

  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"

  # Enhanced Monitoring - see example for details on how to create the role
  # by yourself, in case you don't want to create it automatically
  # Check this and see if role name is changeable
  #   monitoring_interval    = "30"
  #   monitoring_role_name   = "MyRDSMonitoringRole"
  #   create_monitoring_role = true

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }

  # DB subnet group
  create_db_subnet_group = true
  subnet_ids             = data.terraform_remote_state.vpc.outputs.database_subnets

  # DB parameter group
  family = "mysql5.7"

  # DB option group
  major_engine_version = "5.7"

  # Database Deletion Protection
  deletion_protection = true
}