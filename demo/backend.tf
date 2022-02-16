provider "aws" {
  region = var.region
  allowed_account_ids = [var.account_id]
  profile = var.profile
}

# no interpolation here
terraform {
  backend "s3" {
    bucket = "atlantis-tf-states"
    encrypt = true
    dynamodb_table = "atlantis-tf-locks"
    key = "atlantis-inf.tfstate"
    region = "us-east-1"
  }
}
