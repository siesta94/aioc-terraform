module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  cluster_endpoint_public_access = var.cluster_endpoint_public_access

  vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnets

  eks_managed_node_groups = {
    primary = {
      name         = var.node_group_name
      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_types = var.instance_types

      block_device_mappings = {
        xvda = {
          encrypted   = true
          volume_size = 30
          volume_type = "gp3"
        }
      }

      network_interfaces = [
        {
          device_index          = 0,
          delete_on_termination = true
        },
        {
          device_index          = 1,
          delete_on_termination = true
        }
      ]
    }

    tags = {
      Environment = var.environment
      Terraform   = "true"
    }
  }
}