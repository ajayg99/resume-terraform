resource "aws_dynamodb_table" "dynamodb-statelock-resume" {
  name = "terraform-statelock-resume"
  hash_key = "LockID"
  read_capacity = 1
  write_capacity = 1
 
  attribute {
    name = "LockID"
    type = "S"
  }
}