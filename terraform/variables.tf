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

