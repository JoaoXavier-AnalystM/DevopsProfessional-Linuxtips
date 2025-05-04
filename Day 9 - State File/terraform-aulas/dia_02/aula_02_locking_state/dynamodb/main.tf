resource "aws_dynamodb_table" "dynamodb" {
  name           = "devops-professional-jx"
  hash_key       = "LockID"
  read_capacity  = 20 #Value free aws
  write_capacity = 20 #Value free aws

  attribute {
    name = "LockID"
    type = "S"
  }
}