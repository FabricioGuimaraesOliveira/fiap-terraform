resource "aws_lambda_function" "auth_lambda" {
  function_name = "AuthLambda"

  s3_bucket = var.lambda_bucket_id
  s3_key    = aws_s3_object.auth_lambda.key

  runtime = "java21"
  handler = "com.fiap.handler.LambdaHandler::handleRequest"

  source_code_hash = data.archive_file.auth_lambda.output_base64sha256

  role = aws_iam_role.lambda_exec_role.arn

  timeout = 60
  environment {
    variables = {
      CLIENT_TABLE = var.aws_dynamodb_table_name
    }
  }
}

data "archive_file" "auth_lambda" {
  type = "zip"

  source_dir  = "./lambda"
  output_path = "./auth_lambda.zip"
}

resource "aws_s3_object" "auth_lambda" {
  bucket = var.lambda_bucket_id

  key    = "auth_lambda.zip"
  source = data.archive_file.auth_lambda.output_path

  etag = filemd5(data.archive_file.auth_lambda.output_path)
}
