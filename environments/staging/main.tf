
module "iam" {
  source = "../../modules/iam"
}

module "vpc" {
  source = "../../modules/vpc"
  cidr = var.cidr
}

module "eks" {
  source = "../../modules/eks"
  name = var.cluster_name
  cluster_role = module.iam.eks_cluster_role_arn
  subnets = []
}
