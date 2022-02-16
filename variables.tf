variable "region" {
  description = "The AWS region to create resources in"
  type = string
  default = "us-east-1"
}

variable "profile" {
  description = "profile to use aws creds"
  type = string
  default = " my-aws-account "
}

variable "account_id" {
  description = "AWS account ID"
  type = string
  default = " 889248482628 "
}

variable "http_port" {
  description = "for HTTP requests"
  type = string
  default = 8080
}

variable "ssh_port" {
  description = "for SSH requests"
  type = string
  default = 22
}

