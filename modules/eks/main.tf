
resource "aws_eks_cluster" "eks" {
  name = var.name
  role_arn = var.cluster_role
  vpc_config {
    subnet_ids = var.subnets
  }
}
