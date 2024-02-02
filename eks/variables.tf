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

variable "cluster_name" {
  type    = string
  default = "customer-01"
}

variable "node_group_name" {
  type    = string
  default = "node-group-01"
}

variable "instance_types" {
  type    = list(string)
  default = ["t3.medium"]
}

variable "cluster_version" {
  type    = string
  default = "1.27"
}

variable "cluster_endpoint_public_access" {
  type    = bool
  default = true
}