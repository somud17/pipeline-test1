variable "region" {
  type        = string
  description = "AWS region for deployment"
  default     = "eu-west-2"
}

variable "function_name" {
  type        = string
  description = "Function name"
  default     = "hello-world"
}

variable "s3_bucket" {
  type        = string
  description = "The S3 bucket that holds the packaged function"
  default     = "wh-terraform-hello"
}

variable "s3_key" {
  type        = string
  description = "The key location for the serverless package"
  default     = "v1.0.0/hello.zip"
}

variable "subdomain" {
  type        = string
  description = "Subdomain of the function URL"
  default     = "v0-1-1"
}

variable "handler" {
  type        = string
  description = "The handler for the serverless invocation"
  default     = "main.handler"
}

variable "runtime" {
  type        = string
  description = "The handler runtime for serverless invocation"
  default     = "nodejs10.x"
}

variable "domain" {
  type    = string
  default = "go.willhallonline.net"
}

variable "describe_function" {
  type        = string
  description = "A description of the function. Very inception."
  default     = "Describe me."
}

variable "edge_cert_arn" {
  type    = string
  default = "arn:aws:acm:us-east-1:436614339345:certificate/d74f5b6c-d0b1-4231-a06a-90d71698a6b9"
}
