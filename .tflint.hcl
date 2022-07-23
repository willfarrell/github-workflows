plugin "aws" {
  enabled = true
  version = "0.5.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

plugin "aws-serverless" {
  enabled = true
  version = "0.2.1"
  source = "github.com/awslabs/serverless-rules"
}