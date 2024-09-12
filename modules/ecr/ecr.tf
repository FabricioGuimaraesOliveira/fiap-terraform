provider "aws" {
  region = "us-east-1"
}

# Repositório ECR para ms-product
resource "aws_ecr_repository" "ms_product" {
  name                 = "ms-product"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

# Repositório ECR para ms-order
resource "aws_ecr_repository" "ms_order" {
  name                 = "ms-order"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

# Repositório ECR para ms-payment
resource "aws_ecr_repository" "ms_payment" {
  name                 = "ms-payment"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

# Output para exibir as URLs dos repositórios ECR
output "ms_product_repository_url" {
  value = aws_ecr_repository.ms_product.repository_url
}

output "ms_order_repository_url" {
  value = aws_ecr_repository.ms_order.repository_url
}

output "ms_payment_repository_url" {
  value = aws_ecr_repository.ms_payment.repository_url
}
