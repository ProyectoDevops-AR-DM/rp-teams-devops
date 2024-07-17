variable "aws_region" {
  description = "The AWS region where the bucket will be created"
  type        = string
}

variable "aws_access_key" {
  description = "AWS access id"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}

variable "aws_session_token" {
  description = "AWS session token"
  type        = string
  sensitive   = true
  default     = null
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "angular-oblig-develop"
}

