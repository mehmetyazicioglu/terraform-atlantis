provider "aws" {
  region = var.region
  allowed_account_ids = [var.account_id]
  profile = var.profile
}


terraform {
  backend "s3" {
    key            = "terraform.tfstate"
    bucket         = "terraform-atlantis-tf"
    region         = "us-east-1"
    dynamodb_table = "terraform-atlantis-tf-lockss"
  }
}
