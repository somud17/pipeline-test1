provider "aws" {
  region  = var.region
  version = "~> 2.0"
}

module "lambda_serverless_node10" {
  source        = "./modules/lambda-serverless-node10"
  function_name = "hello-serverless-v0.1.4"
  s3_key        = "v0.1.4/hello.zip"
  subdomain     = "v0-1-4"
  s3_bucket     = "wh-terraform-hello"
}
