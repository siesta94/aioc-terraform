provider "aws" {
  region     = var.region
  access_key = var.terraform_cloud_access_key
  secret_key = var.terraform_cloud_secret_key
}