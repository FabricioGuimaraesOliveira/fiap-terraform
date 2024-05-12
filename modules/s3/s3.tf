resource "aws_s3_bucket" "lambda_bucket" {
  bucket        = "green-trace-lambda-s3-bucket-aws-academy"
  force_destroy = true

  tags = {
    Name = "RestaurantBucket"
  }
}

resource "aws_s3_bucket_public_access_block" "lambda_bucket" {
  bucket = aws_s3_bucket.lambda_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
