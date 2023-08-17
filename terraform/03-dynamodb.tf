resource "aws_dynamodb_table" "terraform_locks" {
  name         = "devops-case-state-s3-bucket-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
