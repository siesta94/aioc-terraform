module "eks_auth" {
  source = "aidanmelen/eks-auth/aws"
  eks    = module.eks

  map_users = [
    {
      userarn  = "arn:aws:iam::350473332827:user/strahinjat"
      username = "strahinjat"
      groups   = ["system:masters"]
    },
  ]
}
