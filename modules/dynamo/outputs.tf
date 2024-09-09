output "aws_dynamodb_table_name" {
  value = aws_dynamodb_table.tf_clients_table.name
}
output "aws_dynamodb_table_name_order" {
  value = aws_dynamodb_table.tf_order_table.name
}
output "aws_dynamodb_payments_table_name" {
  value = aws_dynamodb_table.payments_table.name
}