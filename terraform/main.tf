provider "aws" {
  region  = "eu-west-2"
  version = "~> 2.0"
}

module "lambda_serverless_v0_1_6" {
  source = "./modules/lambda-serverless-node10"

  function_name     = "hello-serverless-v0-1-6"
  describe_function = "Hello Serverless Terraform v0.1.6"

  subdomain = "v0-1-6"
  domain    = "go.willhallonline.net"

  s3_key    = "v0.1.6/hello.zip"
  s3_bucket = "wh-terraform-hello"
}

module "lambda_serverless_v0_1_7" {
  source = "./modules/lambda-serverless-node10"

  function_name     = "hello-serverless-v0-1-7"
  describe_function = "Hello Serverless Terraform v0.1.7"

  subdomain = "v0-1-7"
  domain    = "go.willhallonline.net"

  s3_key    = "v0.1.7/hello.zip"
  s3_bucket = "wh-terraform-hello"
}
