variable "region" {
  type = string
}

variable "terraform_cloud_access_key" {
  type = string
}

variable "terraform_cloud_secret_key" {
  type = string
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "identifier_name" {
  type = string
  default = "customer-01"
}

variable "engine" {
  type    = string
  default = "mysql"
}

variable "engine_version" {
  type    = string
  default = "5.7"
}

variable "allocated_storage" {
  type    = string
  default = "10"
}

variable "instance_class" {
  type    = string
  default = "db.t3.small"
}

variable "db_name" {
  type = string
  default = "admin"
}

variable "db_username" {
  type = string
  default = "admin"
}

variable "db_port" {
  type = string
  default = "3306"
}

variable "iam_database_authentication_enabled" {
  type    = bool
  default = true
}

variable "sg_name" {
  type    = string
  default = "rds_security_group"
}

variable "sg_description" {
  type    = string
  default = "Security group for user-service with custom ports open within VPC, and PostgreSQL publicly open"
}