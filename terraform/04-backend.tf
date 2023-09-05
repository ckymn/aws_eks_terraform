terraform {
  backend "s3" {
    # Kendi bucket adınızla değiştirin!
    bucket = "devops-case-s3-bucket"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"

    # Kendi DynamoDB tablo adınızla değiştirin!
    dynamodb_table = "devops-case-state-s3-bucket-locks"
    encrypt        = true
  }
}
