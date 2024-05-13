resource "aws_eks_access_policy_association" "eks-policy" {
  cluster_name  = "eks-cluster-aws-fiap"
  policy_arn    = var.policyArn
  principal_arn = var.principalArn

  access_scope {
    type = "cluster"
  }
}