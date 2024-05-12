variable "regionDefault" {
  default = "us-east-1"
}

variable "labRole" {
  default = "arn:aws:iam::609429599308:role/LabRole"
}

variable "projectName" {
  default = "Tech Challenge - Grupo 02"
}

variable "subnetA" {
  default = "subnet-0e19b596ee056af6b"
}

variable "subnetB" {
  default = "subnet-0b23b97bf05c97661"
}

variable "subnetC" {
  default = "subnet-0be1bcfc0b657b3c1"
}

variable "vpcId" {
  default = "vpc-03829cfa166d216b3"
}

variable "instanceType" {
  default = "t3a.medium"
}

variable "principalArn" {
  default = "arn:aws:iam::609429599308:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}