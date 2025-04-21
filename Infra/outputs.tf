output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnets
}

output "eks_cluster_id" {
  description = "ID of the EKS cluster"
  value       = module.eks.eks_cluster_id
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.eks.eks_cluster_endpoint
}

output "eks_cluster_arn" {
  description = "ARN of the EKS cluster"
  value       = module.eks.eks_cluster_arn
}

output "eks_role_arn" {
  description
