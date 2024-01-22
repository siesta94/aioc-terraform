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
  type = string
}

variable "vpc_name" {
  type = string
}

variable "cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ]
}

variable "public_subnets" {
  type = list(string)
  default = [ "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24" ]
}

variable "azs" {
  type = list(string)
  default = [ "us-east-1a", "us-east-1b", "us-east-1c" ]
}

variable "single_nat_gateway" {
  type = string
  default = "true"
}
variable "enable_nat_gateway" {
  type = string
  default = "true"
}

variable "enable_vpn_gateway" {
  type = string
  default = "false"
}

variable "enable_dns_hostnames" {
  type = string
  default = "true"
}

variable "enable_dns_support" {
  type = string
  default = "true"
}
variable "reuse_nat_ips" {
  type = string
  default = "true"
}

variable "create_database_subnet_group" {
  type = bool
  default = false
}

variable "database_subnets_cidr_blocks" {
  type = list(string)
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "create_database_subnet_route_table" {
  type = bool
  default = false
}