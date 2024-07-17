variable "aws_region" {
  description = "The AWS region to deploy in"
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

variable "orders_integration_uri" {
  description = "The URI for the orders service integration"
  type        = string
}

variable "shipping_integration_uri" {
  description = "The URI for the shipping service integration"
  type        = string
}

variable "products_integration_uri" {
  description = "The URI for the products service integration"
  type        = string
}
