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
}

variable "public_subnets" {
  type = list(string)
}

variable "azs" {
  type = list(string)
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