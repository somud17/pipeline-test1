provider "aws" {
  region  = var.region
  version = "~> 2.0"
}

module "lambda_serverless_v0_1_4" {
  source        = "./modules/lambda-serverless-node10"
  function_name = "hello-serverless-v0.1.4"
  s3_key        = "v0.1.4/hello.zip"
  subdomain     = "v0-1-4"
  s3_bucket     = "wh-terraform-hello"
}

module "lambda_serverless_v0_1_5" {
  source        = "./modules/lambda-serverless-node10"
  function_name = "hello-serverless-v0.1.5"
  s3_key        = "v0.1.5/hello.zip"
  subdomain     = "v0-1-5"
  s3_bucket     = "wh-terraform-hello"
}
