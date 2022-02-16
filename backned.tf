
provider "aws" {
  region = var.region
  allowed_account_ids = [var.account_id]
  profile = var.profile
}

# no interpolation here
terraform {
  backend "s3" {
    bucket = " mine-tf-states "
    encrypt = true
    dynamodb_table = " mine-tf-locks "
    key = " mine-inf.tfstate "
    region = "us-east-1"
    profile = " my-aws-account "
  }
}
