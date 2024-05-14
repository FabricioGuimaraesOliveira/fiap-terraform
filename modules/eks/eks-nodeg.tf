resource "aws_eks_node_group" "node-group-aws-fiap" {
  cluster_name    = "eks-cluster-aws-fiap"
  node_group_name = "NG-${var.projectName}"
  node_role_arn   = var.labRole
  subnet_ids      = ["${var.subnetA}", "${var.subnetB}", "${var.subnetC}"]
  disk_size       = 100
  instance_types   = [var.instanceType]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
}