#resource "aws_eks_cluster" "eks-cluster-aws-fiap" {
#  name     = "eks-cluster-aws-fiap"
#  role_arn = var.labRole
#
#  vpc_config {
#    subnet_ids         = ["${var.subnetA}", "${var.subnetB}", "${var.subnetC}"]
#    security_group_ids = [aws_security_group.sg.id]
#  }
#
#  access_config {
#    authentication_mode = var.accessConfig
#  }
#}