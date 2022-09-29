data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-test-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

resource "aws_cloudwatch_log_group" "hello-world" {
  name = "hello-world-${data.aws_caller_identity.current.account_id}"
  retention_in_days = 1
}
