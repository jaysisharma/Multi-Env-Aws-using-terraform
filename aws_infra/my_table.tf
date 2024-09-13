resource "aws_dynamodb_table" "dyanamo_table" {
  name         = "${var.table_name}-my-table-01"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  attribute {
    name = "id"
    type = "S"
  }
}
