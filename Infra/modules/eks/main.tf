module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.21"
  subnets         = var.private_subnets
  vpc_id          = var.vpc_id

  fargate_profiles = {
    default = {
      selectors = [
        {
          namespace = "default"
        }
      ]
    }
  }
}

