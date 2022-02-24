variable "region" {
  description = "The AWS region to create resources in"
  type = string
  default = "us-east-1"
}

variable "profile" {
  description = "profile to use aws creds"
  type = string
  default = "aws"
}

variable "account_id" {
  description = "AWS account ID"
  type = string
  default = "711134864427"
}

variable "instance_name" {
  description = "Value of the name tag for the ec2 intance"
  type        = string
  default     = "ExampleAppserverInstance"
}

variable "instance_count" {
  description = "value of the instance count"
  default     = "4"
}

