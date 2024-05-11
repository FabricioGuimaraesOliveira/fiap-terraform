resource "aws_dynamodb_table" "tf_clients_table" {
  name = "tf-clients-table"
  billing_mode = "PROVISIONED"
  read_capacity= "2"
  write_capacity= "2"
  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "cpf"
    type = "S"
  }

  global_secondary_index {
    name               = "cpf"
    hash_key           = "cpf"
    write_capacity     = 2
    read_capacity      = 2
    projection_type    = "ALL"
  }
}