terraform {
  backend "s3" {
    encrypt = true    
    bucket = "s3-ajay-terrform-locking"
    dynamodb_table = "terraform-statelock-resume"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}