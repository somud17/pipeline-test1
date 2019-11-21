# Something interesting

Terraform things.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| function\_name | Function name | string | `"hello-world"` | no |
| handler | The handler for the serverless invocation | string | `"main.handler"` | no |
| region | AWS region for deployment | string | `"eu-west-2"` | no |
| runtime | The handler runtime for serverless invocation | string | `"nodejs10.x"` | no |
| s3\_bucket | The S3 bucket that holds the packaged function | string | `"wh-terraform-hello"` | no |
| s3\_key | The key location for the serverless package | string | `"v1.0.0/hello.zip"` | no |

## Outputs

| Name | Description |
|------|-------------|
| base\_url | The "/\*/\*" portion grants access from any method on any resourcewithin the API Gateway REST API. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
