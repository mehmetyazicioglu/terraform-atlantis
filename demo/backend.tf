provider "aws" {
  region = var.region
  allowed_account_ids = [var.account_id]
  profile = var.profile
}


terraform {
  backend "s3" {
    key            = "terraform.tfstate"
    bucket         = "atlantis-tf-state"
    region         = "us-east-1"
    dynamodb_table = "terraform-up-and-running-locks"
  }
}
