data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

resource "aws_cloudwatch_log_group" "hello-world" {
  name = "hello-world"
  retention_in_days = 1
}
