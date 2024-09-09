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

resource "aws_dynamodb_table" "tf_order_table" {
  name           = "tf-order-table"
  billing_mode   = "PROVISIONED"
  read_capacity  = "5"
  write_capacity = "5"
  hash_key       = "codigo"
  range_key      = "status"

  attribute {
    name = "codigo"
    type = "S"
  }

  attribute {
    name = "status"
    type = "S"
  }

  global_secondary_index {
    name               = "status-index"
    hash_key           = "status"
    write_capacity     = 5
    read_capacity      = 5
    projection_type    = "ALL"
  }
}

resource "aws_dynamodb_table" "payments_table" {
  name         = "payments-table"
  billing_mode = "PROVISIONED"
  read_capacity  = 2
  write_capacity = 2
  hash_key    = "id"

  attribute {
    name = "id"
    type = "S"
  }

  global_secondary_index {
    name            = "status-index"
    hash_key        = "status"
    write_capacity  = 2
    read_capacity   = 2
    projection_type = "ALL"

    attribute {
      name = "status"
      type = "S"
    }
  }

  global_secondary_index {
    name            = "qrCode-index"
    hash_key        = "qrCode"
    write_capacity  = 2
    read_capacity   = 2
    projection_type = "ALL"

    attribute {
      name = "qrCode"
      type = "S"
    }
  }
}

