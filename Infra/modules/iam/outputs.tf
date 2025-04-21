output "eks_role_arn" {
  description = "ARN of the EKS IAM role"
  value       = aws_iam_role.eks_role.arn
}
