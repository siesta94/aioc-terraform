variable "region" {
  type = string
}

variable "terraform_cloud_access_key" {
  type = string
}

variable "terraform_cloud_secret_key" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "cidr" {
  type = string
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

variable "enable_nat_gateway" {
  type = string
}

variable "enable_vpn_gateway" {
  type = string
}

variable "reuse_nat_ips" {
  type = string
}

variable "environment" {
  type = string
}