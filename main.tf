provider "aws" {
  region  =  "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.61.0"
    }
  }

  backend "s3" {
    bucket = "terraform-s3-state-greentrace-aws-fiap1"
    key    = "greentrace-terraform"
    region = "us-east-1"
  }
}

module "api-gateway" {
  source       = "./modules/api-gateway"

}


module "lambda" {
  source                   = "./modules/lambda"
  lambda_bucket_id         = module.s3.lambda_bucket_id
  apigateway_id            = module.api-gateway.apigateway_id
  apigateway_execution_arn = module.api-gateway.apigateway_execution_arn
  aws_dynamodb_table_name  = module.dynamo.aws_dynamodb_table_name
}

module "s3" {
  source = "./modules/s3"
}

module "dynamo" {
  source = "./modules/dynamo"
}

module "eks" {
  source = "./modules/eks"
}

module "ecr" {
  source = "./modules/ecr"
}

module "sqs" {
  source = "./modules/sqs"
}

