provider "aws" {
  region  = "eu-west-2"
  version = "~> 2.0"
}

variable module_depends_on { default = [], type = "list"}

# IAM role which dictates what other AWS services the Lambda function
# may access.
resource "aws_iam_role" "lambda_exec" {
  name = "lambda_exec"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

module "lambda_serverless_v0_1_4" {
  source        = "./modules/lambda-serverless-node10"
  function_name = "hello-serverless-v0-1-4"
  s3_key        = "v0.1.4/hello.zip"
  subdomain     = "v0-1-4"
  s3_bucket     = "wh-terraform-hello"
  module_depends_on = [
    "${aws_iam_role.lambda_exec.arn}"
  ]
}

module "lambda_serverless_v0_1_5" {
  source        = "./modules/lambda-serverless-node10"
  function_name = "hello-serverless-v0-1-5"
  s3_key        = "v0.1.5/hello.zip"
  subdomain     = "v0-1-5"
  s3_bucket     = "wh-terraform-hello"
}
