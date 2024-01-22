module "rds_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = var.sg_name
  description = var.sg_description
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      description = "RDS Port"
      cidr_blocks = "10.0.0.0/16"
    }
  ]
}
