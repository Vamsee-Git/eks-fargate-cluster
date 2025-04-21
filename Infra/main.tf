provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones = var.availability_zones
}

module "iam" {
  source = "./modules/iam"
}

module "eks" {
  source = "./modules/eks"
  region = var.region
  cluster_name = var.cluster_name
  private_subnets = module.vpc.private_subnets
  vpc_id = module.vpc.vpc_id
}
