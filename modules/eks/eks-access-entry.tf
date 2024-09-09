#resource "aws_eks_access_entry" "access-entry" {
#  cluster_name      = "eks-cluster-aws-fiap"
#  principal_arn     = var.principalArn
#  kubernetes_groups = ["tech-challenge", "fiap"]
#  type              = "STANDARD"
#}